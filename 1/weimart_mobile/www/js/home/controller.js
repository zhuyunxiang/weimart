var controllers = angular.module('controllers', ['angularFileUpload']);
// 主页
controllers.controller('homeCtrl', ['$scope', '$state', 'Product',
    function($scope, $state, Product) {
        $scope.u = navigator.userAgent;
        $scope.swipeTo = function(direction, state) {
            switch (state.current.name) {
                case 'home':
                    if (direction == 'right') {
                        alert('左边没有啦');
                    } else {
                        $state.go('list');
                    }
                    break;
                case 'list':
                    if (direction == 'right') {
                        $state.go('home');
                    } else {
                        $state.go('personal');
                    }
                    break;
                case 'personal':
                    if (direction == 'right') {
                        $state.go('list');
                    } else {
                        $state.go('conf');
                    }
                    break;
                case 'conf':
                    if (direction == 'right') {
                        $state.go('personal');
                    } else {
                        alert('右边没有啦');
                    }
                    break;
            }
        }


        $scope.itemList = [{
            "url": "2.jpg"
        }, {
            "url": "3.jpg"
        }, {
            "url": "4.jpg"
        }, {
            "url": "2.jpg"
        }, {
            "url": "3.jpg"
        }, {
            "url": "4.jpg"
        }, ];


        // $scope.productFore = {};
        Product.getAll();
        $scope.$on('Product.getAllSuccess', function () {
            $scope.productBeaty = Product.all_list[1];
            $scope.productNew = Product.all_list[2];
            $scope.packageShow = Product.all_list[7];
            $scope.shoesF = Product.all_list[3];
            $scope.shoesM = Product.all_list[4];
        });


    }
]);
// 分类
controllers.controller('listCtrl', ['$scope',
    function($scope) {

        $scope.women = [{
            "name": "T恤"
        }, {
            "name": "衬衫"
        }, {
            "name": "外套"
        }, {
            "name": "衬衫"
        }, {
            "name": "毛衣"
        }, {
            "name": "家居"
        }, {
            "name": "上装"
        }, {
            "name": "内衣"
        }, {
            "name": "裙装"
        }, {
            "name": "T恤"
        }, {
            "name": "T恤"
        }, {
            "name": "休闲"
        }, ];
        $scope.womenShoes = [{
            "name": "商务鞋"
        }, {
            "name": "单鞋"
        }, {
            "name": "商务鞋"
        }, {
            "name": "单鞋"
        }, ];
        $scope.men = [{
            "name": "短袖"
        }, {
            "name": "2袖"
        }, {
            "name": "短袖"
        }, {
            "name": "短袖"
        }, {
            "name": "短袖"
        }, {
            "name": "短袖"
        }, {
            "name": "短袖"
        }, {
            "name": "短袖"
        }, ];
        $scope.menShoes = [{
            "name": "皮鞋"
        }, {
            "name": "商务鞋"
        }, {
            "name": "皮鞋"
        }, {
            "name": "商务鞋"
        }, ];
        $scope.pkage = [{
            "name": "女包"
        }, {
            "name": "男包"
        }, {
            "name": "钱包"
        }, {
            "name": "女包"
        }, ];

    }
]);
// 我的
controllers.controller('personalCtrl', ['$upload', '$scope', '$state', 'Shop', 'Auth', 'Product',
    function($upload, $scope, $state, Shop, Auth, Product) {
        $scope.myShop = {};
        Shop.getShopInfo();

        if (Auth.isLoggedIn()) {
            var user = Auth.getUser();
            if (user.shops && user.shops.length == 0) {
                console.log(Shop);
                $state.go('shop');
            }
        } else {
            $state.go('login');
        }

        // 获取当前店铺的所有商品列表
        // $scope.ProductList = Product.list;
        $scope.$on('Product.getProductListSuccess', function (event) {
            $scope.ProductList = Product.list;
        });

        // 获取店铺信息
        $scope.$on('Shop.getShopInfoSuccess', function(event) {
            if (!Shop.data) {
                Shop.data = null;
            } else {
                $scope.editShopInfo = Shop.data;
                $scope.myShop = Shop.data;
                Product.getList($scope.myShop.shop_id);
            }
            
        });

        //头像
        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        //头像上传
        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + '/API/ShopAPI/save_shop_img_for_app',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.editShopInfo.shop_img = data;
                        $scope.editShopInfo.shop_img_temp = data;
                    });
                }
            }
        };

        //保存店铺信息
        $scope.saveShopInfo = function() {
            console.log($scope.editShopInfo);
            Shop.saveShopInfo($scope.editShopInfo);
        }
        $scope.$on('User.saveShopInfoSuccess', function (event) {
            alert("信息保存成功!");
        })
        $scope.$on('User.saveShopInfoError', function (event) {
            alert('保存店铺信息失败...');;
        })

        // $scope.editProductInfo = {};

        // 设置新建内容
        $scope.setAddInfo = function () {
            $scope.pageTitle = '发布宝贝';
        }

         //商品排序
        $scope.reverse = 'true';
        $scope.predicate = 'product_register_time';

        //商品检索
        $scope.searchKeyword = '';
        $scope.setSearchKeyword = function () {
        }

    }
]);

controllers.controller('marketManageCtrl', ['$upload', '$scope', '$state', 'Shop', 'Auth', 'Product',
    function($upload, $scope, $state, Shop, Auth, Product) {
        $scope.tempProduct = {};

        // 获取店铺信息
        $scope.$on('Shop.getShopInfoSuccess', function(event) {
            if (!Shop.data) {
                Shop.data = null;
            } else {
                $scope.editShopInfo = Shop.data;
                $scope.myShop = Shop.data;
                Product.getList($scope.myShop.shop_id);
            }
            
        });

        // 获取当前店铺的所有商品列表 
        Product.getList($scope.myShop.shop_id);    
        $scope.$on('Product.getProductListSuccess', function (event) {
            $scope.ProductList = Product.list;
        });

        // 设置新建内容
        $scope.setAddInfo = function () {
            $scope.pageTitle = '发布宝贝';
        }

        //商品过滤
        $scope.selectType = 'A';
        $scope.setSelectType = function (selectType) {
            $scope.selectType = selectType;
        }

       

        //商品检索
        $scope.searchKeyword = '';
       

        //商品下架
        $scope.offline = function (item) {
            console.log(item);
            $scope.tempProduct = item;
            $scope.tempProduct.product_state = 'I';
            $scope.tempProduct.type_id = item.types[0].type_id;
            Product.saveInfo($scope.tempProduct);
            Product.getList($scope.myShop.shop_id);
        }
        $scope.$on('Product.saveProductInfoSuccess', function (event) {       
            alert("此操作已成功！");    
            Product.getList($scope.myShop.shop_id);       
        });

        //商品上线
        $scope.online = function (item) {
            $scope.tempProduct = item;
            $scope.tempProduct.product_state = 'A';
            $scope.tempProduct.type_id = item.types[0].type_id;
            Product.saveInfo($scope.tempProduct);
            Product.getList($scope.myShop.shop_id);
        }
         //商品入库
        $scope.toStock = function (item) {
            $scope.tempProduct = item;
            $scope.tempProduct.product_state = 'S';
            $scope.tempProduct.type_id = item.types[0].type_id;
            Product.saveInfo($scope.tempProduct);
            Product.getList($scope.myShop.shop_id);
        }

         // 删除商品信息
        $scope.deleteInfo = function (productId) {
            if (confirm("确定要删除?不可恢复!")) {
                Product.deleteInfo(productId); 
                Product.getList($scope.myShop.shop_id);
            };
        }

        // go Personal page
        $scope.goPersonal = function () {
            $state.go('personal');
        }



    }
]);

// 设置
controllers.controller('confCtrl', ['$scope', '$state', 'Auth', 'Shop',
    function($scope, $state, Auth, Shop) {
        // 判断是否已经登陆
        if (!Auth.isLoggedIn()) {
            $state.go('login');
        } else {
            $scope.userInfo = Auth.getUser();

            $scope.logOut = function() {
                if (confirm("确定要退出吗?")) {
                    Auth.logOut();
                    $scope.userInfo = null;
                    Shop.clearUp();
                };
            }
        }

        $scope.$on('Shop.clearSuccess', function (event) {
            $state.go('login');
        });
    }
]);

// 登陆页面
controllers.controller('loginCtrl', ['$scope', '$state', 'User', 'Auth','Shop',
    function($scope, $state, User, Auth,Shop) {
        $scope.doLogin = function() {
            User.doLogin($scope.loginInfo);
            $scope.$on('User.loginSuccess', function(event) {
                console.log(Auth.getUser());
                goBack();
            })
        }
    }
]);

// 注册页面
controllers.controller('registerCtrl', ['$scope', '$state', '$upload', 'Auth',
    function($scope, $state, $upload, Auth) {
        $scope.doRegister = function() {
            console.log($scope.registerInfo);
        }

        $scope.userDetailInfo = Auth.getUser();

        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + '/API/UserAPI/save_head_img_for_app',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.userDetailInfo.user_header_img = data;
                        $scope.userDetailInfo.user_header_temp_img = data;
                    });
                }
            }
        };
    }
]);

//商品管理
controllers.controller('productCtrl', ['$upload', '$scope', '$state','$stateParams', 'Product', 'Shop',
    function($upload, $scope, $state,$stateParams, Product, Shop) {

        if ($stateParams && $stateParams.id) {
            $scope.pageTitle = '更新宝贝信息';
            for(var i in Product.list) {
                if (Product.list[i].product_id == $stateParams.id) {
                    $scope.editProductInfo = Product.list[i];
                    if (Product.list[i].types[0]) {
                        $scope.editProductInfo.type_id = Product.list[i].types[0].type_id;
                    };
                    break;
                };
            }
        } else {
            $scope.editProductInfo = {};
            $scope.pageTitle = '发布宝贝';
        }


        $scope.$on('Product.setUpdateItemSuccess', function (event) {
            $scope.editProductInfo = Product.update_item;
        });

        // 获取所有下拉
        Product.getTypeListDropArr();
        $scope.$on('Product.getTypeListDropArrSuccess', function (event) {
            $scope.typeListForDrop = Product.type_drop_list;
        });

        // // 获取当前店铺的所有商品列表
        Product.getList($scope.myShop.shop_id);
        $scope.$on('Product.getProductListSuccess', function (event) {
            $scope.ProductList = Product.list;
        });

        // 保存商品信息
        $scope.saveProductInfo = function (type) {
            $scope.editProductInfo.shop_id = $scope.myShop.shop_id;
            $scope.editProductInfo.product_state = type;
            Product.saveInfo($scope.editProductInfo);
        }
        $scope.$on('Product.saveProductInfoSuccess', function (event) {
            alert("信息保存成功!");
            $state.go('personal.marketManage');
        })


        $scope.$watch('files', function() {
            $scope.upload_baby($scope.files);
        });

        $scope.upload_baby = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + '/API/ProductAPI/save_product_img_for_app',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.editProductInfo.product_img = data;
                        $scope.editProductInfo.product_img_temp =  data;
                    });
                }
            }
        };
    }
]);


//商品详情
controllers.controller('goodsCtrl', ['$upload', '$scope', '$state','$stateParams', 'Product', 'Shop',
    function($upload, $scope, $state, $stateParams, Product, Shop) {
        Product.getAll();
        $scope.$on('Product.getAllSuccess', function() {
            $scope.productFore = Product.all_list[10];
            $scope.goBack = function () {
                goBack();
            }
            if ($stateParams && $stateParams.id) {
                for (var i in Product.all_list) {
                    if (Product.all_list[i].product_id == $stateParams.id) {
                        $scope.productInfo = Product.all_list[i];
                        break;
                    };
                }
            } else {
                $scope.productInfo = {};
            }
        });
    }
]);

//商品分类
controllers.controller('typeCtrl', ['$scope', '$state', '$stateParams', 'Ptype',
    function($scope,$state, $stateParams, Ptype) {
        if ($stateParams && $stateParams.id) {
            Ptype.getListById($stateParams.id);
        } else {
            $scope.listOfType = {};
        }

        $scope.classOftype = 'col-xs-3';
        $scope.firstHalf = [];
        $scope.secondHalf = [];
        $scope.$on('Ptype.getListByIdSuccess', function() {
            $scope.listOfType = Ptype.list;
            $scope.typeList = Ptype.list.extend_types;
            console.log($scope.typeList);
            var prod_len = Ptype.list.product.length;
            console.log(prod_len);
            var prod_half = parseInt(prod_len / 2);
            console.log(prod_half);

            if ($scope.typeList.length < 4) {
                var sum =  12 / $scope.typeList.length;
                $scope.classOftype = 'col-xs-' + sum;
            } 
            console.log($scope.listOfType);

            for (var i = 0; i < prod_half; i++) {
                $scope.firstHalf.push(Ptype.list.product[i]);
                console.log($scope.firstHalf);
            };
            for (var i = prod_half; i < prod_len; i++) {
                $scope.secondHalf.push(Ptype.list.product[i]);
                console.log($scope.secondHalf);
            };
        });

        $scope.goBack = function() {
            goBack();
        }

    }
]);


// //代理服务
// controllers.controller('agenceCtrl', ['$scope', 'Shop'
//     function($scope, Shop) {

//     }
// ]);





function goBack() {
    console.log(1);
    if ((navigator.userAgent.indexOf('MSIE') >= 0) && (navigator.userAgent.indexOf('Opera') < 0)) { // IE 
        if (history.length > 0) {
            window.history.go(-1);
        } else {
            window.opener = null;
            window.close();
        }
    } else { //非IE浏览器 
        if (navigator.userAgent.indexOf('Firefox') >= 0 ||
            navigator.userAgent.indexOf('Opera') >= 0 ||
            navigator.userAgent.indexOf('Safari') >= 0 ||
            navigator.userAgent.indexOf('Chrome') >= 0 ||
            navigator.userAgent.indexOf('WebKit') >= 0) {

            if (window.history.length > 1) {
                window.history.go(-1);
            } else {
                window.opener = null;
                window.close();
            }
        } else { //未知的浏览器 
            window.history.go(-1);
        }
    }
}
