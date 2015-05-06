var controllers = angular.module('controllers', ['angularFileUpload']);
// 主页
controllers.controller('homeCtrl', ['$scope', '$state',
    function($scope, $state) {
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

         $scope.saveShopInfo = function() {
            console.log($scope.editShopInfo);
            Shop.saveShopInfo($scope.editShopInfo);
        }

         $scope.$on('User.saveShopInfoError', function (event) {
            alert('保存店铺信息失败');
        })

//========================================================================
        $scope.editProductInfo = {};

        // 删除商品信息
        $scope.deleteInfo = function (productId) {
            if (confirm("确定要删除?不可恢复!")) {
                Product.deleteInfo(productId); 
                Product.getList($scope.myShop.shop_id);
            };
        }

        // 设置新建内容
        $scope.setAddInfo = function () {
            $scope.pageTitle = '发布宝贝';
            // $scope.editProductInfo = {product_img:publicPath+'home/img/default_product.png'};
        }


        // 设置修改商品信息
        $scope.setUpdateInfo = function (info) {
            $scope.pageTitle = '更新宝贝信息';
            Product.setUpdateItem(info);
            $state.go('personal.marketManage.publish');
            $scope.$broadcast('Product.setUpdateItemSuccess', 'aaa');
        }


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
            alert('111');
            console.log($scope.editProductInfo);
        });

        // 获取所有下拉
        Product.getTypeListDropArr();
        $scope.$on('Product.getTypeListDropArrSuccess', function (event) {
            $scope.typeListForDrop = Product.type_drop_list;
        });

        // 获取当前店铺的所有商品列表
        Product.getList($scope.myShop.shop_id);
        $scope.$on('Product.getProductListSuccess', function (event) {
            $scope.ProductList = Product.list;
        });

        // 保存商品信息
        $scope.saveProductInfo = function () {
            $scope.editProductInfo.shop_id = $scope.myShop.shop_id;
            Product.saveInfo($scope.editProductInfo);
            console.log("11112122");
        }
        $scope.$on('Product.saveProductInfoSuccess', function (event) {
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

function goBack() {
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