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
            "url": "25.jpg"
        }, {
            "url": "26.jpg"
        }, {
            "url": "27.jpg"
        }, {
            "url": "28.jpg"
        }, ];


        // $scope.productFore = {};
        Product.getAll();
        $scope.$on('Product.getAllSuccess', function () {
            $scope.productBeaty = Product.all_list[0];
            $scope.productNew = Product.all_list[1];
            $scope.packageShow = Product.all_list[2];
            $scope.shoesF = Product.all_list[3];
            $scope.shoesM = Product.all_list[4];
        });


    }
]);

// 热门品牌
controllers.controller('brandCtrl', ['$scope', '$state', 'Product',
    function($scope, $state, Product) {

        //热门品牌大图片
        $scope.itemList = [];
        for (var i = 25; i <= 29; i++) {
            $scope.itemList.push(i);  
        };

        //热门品牌小图片
        $scope.brandsUrl = [];
        for (var i = 1; i <= 24; i++) {
            $scope.brandsUrl.push(i);  
        };

    }
]);
// 分类
controllers.controller('listCtrl', ['$scope',
    function($scope) {

        $scope.cloth = [{
            "name": "T恤"
        }, {
            "name": "衬衫"
        }, {
            "name": "外套"
        }, {
            "name": "毛衣"
        }, {
            "name": "背心"
        }, {
            "name": "上装"
        }, {
            "name": "内衣"
        }, {
            "name": "裙装"
        }, {
            "name": "正装"
        }, {
            "name": "牛仔"
        }, {
            "name": "哈伦"
        }, {
            "name": "休闲"
        }, ];
        $scope.shoesAndPack = [{
            "name": "商务鞋"
        }, {
            "name": "单鞋"
        }, {
            "name": "运动鞋"
        }, {
            "name": "凉鞋"
        }, {
            "name": "女包"
        }, {
            "name": "男包"
        }, {
            "name": "箱子"
        }, {
            "name": "皮夹"
        }, ];
        $scope.sport = [{
            "name": "运动鞋"
        }, {
            "name": "运动服"
        }, {
            "name": "护具"
        }, {
            "name": "运动包"
        }, ];
        $scope.skinCare = [{
            "name": "护肤"
        }, {
            "name": "彩妆"
        }, {
            "name": "精油"
        }, {
            "name": "瘦身"
        }, ];

        $scope.phone = [{
            "name": "手机"
        }, {
            "name": "平板"
        }, {
            "name": "电脑"
        }, {
            "name": "相机"
        }, ];

        $scope.homeWork = [{
            "name": "大家电"
        }, {
            "name": "厨房"
        }, {
            "name": "生活"
        }, {
            "name": "个护"
        }, ];
       

        $scope.jades = [{
            "name": "首饰"
        }, {
            "name": "饰品"
        }, {
            "name": "手表"
        }, {
            "name": "眼镜"
        }, ];
            

        $scope.foods = [{
            "name": "鲜果"
        }, {
            "name": "肉类"
        }, {
            "name": "零食"
        }, {
            "name": "酒水"
        }, ];
    }
]);
// 我的
controllers.controller('personalCtrl', ['$upload', '$scope', '$state', 'Shop', 'Auth', 'Product',
    function($upload, $scope, $state, Shop, Auth, Product) {
        $scope.myShop = {};
        $scope.editShopInfo = [];
        Shop.getShopInfo();


        if (Auth.isLoggedIn()) {
            var user = Auth.getUser();
            if ((!user.shops) || user.shops.length == 0) {
                $state.go('personal.shop');
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
        $scope.$on('Shop.saveShopInfoSuccess', function (event) {
            alert("信息保存成功!");
        })
        $scope.$on('Shop.saveShopInfoError', function (event) {
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
        $scope.$on('Shop.getShopInfoSuccess', function (event) {
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
controllers.controller('confCtrl', ['$scope', '$state', 'Auth', 'Shop', 'User',
    function($scope, $state, Auth, Shop, User) {
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

        //信息显示
        $scope.shopCollectedSum = 0;
        $scope.prodCollectedSum = 0;
        $scope.trackSum = 0;

        //收藏的店铺数量
        User.getAllShopCollected(Auth.getId());
        $scope.$on('User.getAllShopCollectedSuccess', function (event) {
            $scope.shopCollectedSum = User.shopsOnCollectedSum;
        })

        //收藏的商品数量
        User.getAllProdCollected(Auth.getId());
        $scope.$on('User.getAllProdCollectedSuccess', function (event) {
            $scope.prodCollectedSum = User.prodsOnCollectedSum;
        })

    }
]);

// 收藏的店铺
controllers.controller('shopCollectedCtrl', ['$scope', '$state', 'Auth', 'Shop', 'User',
    function($scope, $state, Auth, Shop, User) {
        
        //收藏的店铺
        $scope.shopCollected = {};
        User.getAllShopCollected(Auth.getId());
        $scope.$on('User.getAllShopCollectedSuccess', function (event) {
            $scope.shopCollected = User.shopsOnCollected;
            console.log($scope.shopCollected);
        })

        $scope.goBack = function() {
            goBack();
        }

        //保存收藏店铺信息
        $scope.onFavoriteShop = function (shop_id) {
            if (Auth.isLoggedIn()) {
                var info = {'shop_id':shop_id, 'user_id':Auth.getId()};
                User.onFavoriteShop(info);
            } else {
                $state.go('login');
            } 
        }

        $scope.$on('User.shopOffCollectedSuccess', function (event) {
            alert(11);
            User.getAllShopCollected(Auth.getId());
        })

        $scope.$on('User.shopOnCollectedSuccess', function (event) {
            alert(22);
            User.getAllShopCollected(Auth.getId());
        })

    }
]);

// 收藏的商品
controllers.controller('prodCollectedCtrl', ['$scope', '$state', 'Auth', 'Shop', 'User',
    function($scope, $state, Auth, Shop, User) {

        //收藏的商品
        $scope.prodCollected = {};
        User.getAllProdCollected(Auth.getId());

        $scope.$on('User.getAllProdCollectedSuccess', function (event) {
            $scope.prodCollected = User.prodsOnCollected;
            console.log($scope.prodCollected);
        })

        $scope.goBack = function() {
            goBack();
        }

         //取消收藏
        $scope.onFavoriteProd = function (prod_id) {
            var info = [];
            // console.log(prod_id);
            if (Auth.isLoggedIn()) {
                var info = {'product_id':prod_id, 'user_id':Auth.getId()};
                User.onFavoriteProd(info);
            } else {
                $state.go('login');
            }

        }

        $scope.$on('User.prodOffCollectedSuccess', function (event) {
            console.log("ZYX");
            User.getAllProdCollected(Auth.getId());
        })

         $scope.$on('User.prodOnCollectedSuccess', function (event) {
            console.log("MTH");
            User.getAllProdCollected(Auth.getId());
        })


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
controllers.controller('goodsCtrl', ['$upload', '$scope', '$state','$stateParams', 'Product', 'Shop', 'Auth', 'User',
    function($upload, $scope, $state, $stateParams, Product, Shop, Auth, User) {
        Product.getAll();
        $scope.product_is_collected = '0';

        $scope.$on('Product.getAllSuccess', function() {
            $scope.productFore = Product.all_list[10];
            $scope.goBack = function () {
                goBack();
            }
            if ($stateParams && $stateParams.id) {
                for (var i in Product.all_list) {
                    if (Product.all_list[i].product_id == $stateParams.id) {
                        $scope.productInfo = Product.all_list[i];
                        checkProdCollected();
                        $scope.productInfo = Product.all_list[i];
                        break;
                    };
                }
            } else {
                $scope.productInfo = {};
            }
        });

        //保存收藏
        $scope.onFavoriteProd = function () {
            var info = [];
            var prod_id = $scope.productInfo.product_id; 
            console.log(prod_id);
            if (Auth.isLoggedIn()) {
                var info = {'product_id':prod_id, 'user_id':Auth.getId()};
                User.onFavoriteProd(info);
            } else {
                alert("请先登录......");
                $state.go('login');
            }

        }

        $scope.$on('User.onFavoriteProdSuccess', function (event) {
            // alert("宝贝收藏成功!");
            checkProdCollected();
        })


        //检测商品是否收藏       
        function checkProdCollected() {
            var prod_id = $scope.productInfo.product_id; 
            console.log(prod_id);
            // if (Auth.isLoggedIn()) {
                var info = {'product_id':prod_id, 'user_id':Auth.getId()};
                User.checkProdCollected(info);
            // } else {
            //     $state.go('login');
            // }
        }

        $scope.$on('User.prodOnCollectedSuccess', function (event) {
            $scope.product_is_collected = User.collectProdState;
        })

        $scope.$on('User.prodOffCollectedSuccess', function (event) {
            $scope.product_is_collected = User.collectProdState;
        })

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
        $scope.typeList = [];
        $scope.allProds = [];
        $scope.$on('Ptype.getListByIdSuccess', function() {
            $scope.listOfType = Ptype.list;
            var typeLen = Ptype.list.extend_types.length;
            for (var i = 0; i < typeLen; i++) {
                if (i > 3) 
                    break;
                $scope.typeList.push(Ptype.list.extend_types[i]);
            };
            var prod_len = Ptype.list.product.length;
            var prod_half = parseInt(prod_len / 2);
            $scope.allProds = Ptype.list.product;


            if ($scope.typeList.length < 4) {
                var sum =  12 / $scope.typeList.length;
                $scope.classOftype = 'col-xs-' + sum;
            } 

            for (var i = 0; i < prod_half; i++) {
                $scope.firstHalf.push(Ptype.list.product[i]);
            };
            for (var i = prod_half; i < prod_len; i++) {
                $scope.secondHalf.push(Ptype.list.product[i]);
            };
        });

        $scope.goBack = function() {
            goBack();
        }

    }
]);


//热门宝贝
controllers.controller('hotbabyCtrl', ['$scope', '$state', '$stateParams', 'Product',
    function($scope,$state, $stateParams, Product) {
        $scope.clothes = [];
        $scope.makeup = [];
        $scope.jewelrys = [];
        $scope.others = [];

       Product.getRecommendList();
       $scope.$on('Product.getRecommendListSuccess', function (event) {
            $scope.recommend_list = Product.recommend_list;
            console.log(Product.recommend_list);
            for(var i in Product.recommend_list){
                console.log(Product.recommend_list[i].types.type_id);
                if (1 == Product.recommend_list[i].types.type_id) {
                    $scope.clothes.push(Product.recommend_list[i]);

                } else if (4 == Product.recommend_list[i].types.type_id) {
                    $scope.makeup.push(Product.recommend_list[i]);

                } else if (36 == Product.recommend_list[i].types.type_id) {
                    $scope.jewelrys.push(Product.recommend_list[i]);

                } else {
                    $scope.others.push(Product.recommend_list[i]);
                };
            }
            console.log($scope.clothes);
            console.log($scope.makeup);
            console.log($scope.jewelrys);
            console.log($scope.others);
           

        });




        $scope.goBack = function() {
            goBack();
        }

    }
]);


//热门卖家
controllers.controller('hotshopCtrl', ['$scope', '$state', '$stateParams', 'Shop',
    function($scope,$state, $stateParams, Shop) {
    
        Shop.getRecommendShopInfo();
        $scope.$on('Shop.getRecommendShopInfoSuccess', function (event) {
            $scope.recommendShopList = Shop.recommend_list;
        });

        $scope.goBack = function() {
            goBack();
        }

    }
]);

//卖家详情
controllers.controller('inshopCtrl', ['$scope', '$state', '$stateParams', 'Shop', 'Auth', 'User',
    function($scope,$state, $stateParams, Shop, Auth, User) {
        $scope.shop_is_collected = '0';
        if ($stateParams && $stateParams.id) {
            Shop.getShopById($stateParams.id);
        } else {
            $scope.theShop = {};
        }
    
        $scope.$on('Shop.getShopByIdSuccess', function (event) {
            $scope.theShop = Shop.shopInfoById;
            checkShopCollected();
        });

        $scope.goBack = function() {
            goBack();
        }

        //保存收藏店铺信息
        $scope.onFavoriteShop = function () {
            var shop_id = $scope.theShop.shop_id;
            console.log($scope.theShop.shop_id);
            if (Auth.isLoggedIn()) {
                console.log(2);
                var info = {'shop_id':shop_id, 'user_id':Auth.getId()};
                User.onFavoriteShop(info);
            } else {
                $state.go('login');
            } 
        }

        $scope.$on('User.onFavoriteShopSuccess', function (event) {
            checkShopCollected();
            console.log($scope.shop_is_collected);
        })

        //检测店铺是否收藏
        $scope.shop_is_collected = '0';
        function checkShopCollected() {
            var shop_id = $scope.theShop.shop_id; 
            console.log(shop_id);
            if (Auth.isLoggedIn()) {
                var info = {'shop_id':shop_id, 'user_id':Auth.getId()};
                User.checkShopCollected(info);
            } else {
                $state.go('login');
            }
        }

        $scope.$on('User.shopOnCollectedSuccess', function (event) {
            $scope.shop_is_collected = User.collectShopState;
        })

        $scope.$on('User.shopOffCollectedSuccess', function (event) {
            $scope.shop_is_collected = User.collectShopState;
        })

    }
]);

//代理服务
controllers.controller('agenceCtrl', ['$scope', '$state', 'Shop','Auth',
    function($scope, $state, Shop, Auth) {
        var myShop = null;
        var superId = null;

        Shop.getAll();
        $scope.$on('Shop.getAllSuccess', function () {
            $scope.allShop = Shop.allList;
        });

        $scope.$on('Shop.getShopInfoSuccess', function (event) {
            console.log(Shop.data);
            if (!Shop.data) {
                alert("请先注册您的店铺...");
                $state.go('personal');              
            } else {
                myShop = Shop.data;
                myShop.super_shop_id = superId;
                myShop.delegate_state = 0;
                Shop.saveShopInfo(myShop);
            }
            
        });

        $scope.joinUs = function (id) {
            if (!Auth.isLoggedIn()) {
                alert("请先登录...");
                $state.go('login');
            } else {
                superId = id;
                Shop.getShopInfo();
            };


        }


        $scope.$on('Shop.saveShopInfoSuccess', function (event) {
            alert("申请代理成功!");
        })
        $scope.$on('Shop.saveShopInfoError', function (event) {
            alert('申请代理失败...');;
        })



        $scope.goBack = function() {
            goBack();
        }
    }
]);

//代理管理
// controllers.controller('agenceManageCtrl', ['$scope', '$state', 'Shop','Auth',
//     function($scope, $state, Shop, Auth) {

// ]);





































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
