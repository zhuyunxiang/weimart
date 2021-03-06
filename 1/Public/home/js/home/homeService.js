var HomeServices = angular.module('HomeServices', []);

// 用户
HomeServices.service('User', ['$http', '$rootScope',
    function($http, $rootScope) {
        var User = {};
        User.user_name = null;
        User.user_id = null;
        User.error_info = null;
        User.detail_info = null;
        User.productIsCollected = null;
        User.shopIsCollected = null;
        User.collectShops = null;
        User.collectProducts = null;
        User.sellerInfo = null;
        // 检查登录情况
        User.checkLogin = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_login',
                data: 'null',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.detail_info = data.data;
                        User.user_name = data.data.user_name;
                        User.user_id = data.data.user_id;
                        $rootScope.$broadcast('User.isLogin');
                    } else {
                        $rootScope.$broadcast('User.notLogin');
                    }
                });
        }
        // 检查邮箱是否已经注册
        User.getEmailIsRegistered = function(email) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_email',
                data: 'email=' + email,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.data == false) {
                        $rootScope.$broadcast('User.emailNotAval');
                    } else {
                        $rootScope.$broadcast('User.emailAval');
                    }
                });
        }

        // 检查用户名是否已经注册
        User.getNameIsRegistered = function(username) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_username',
                data: 'username=' + username,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.data == false) {
                        $rootScope.$broadcast('User.usernameNotAval');
                    } else {
                        $rootScope.$broadcast('User.usernameAval');
                    }
                });
        }

        // 注册
        User.doRegister = function(info) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/do_register',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_name = info.user_name;
                        User.user_id = data.data;
                        $rootScope.$broadcast('User.registerSuccess');
                    } else {
                        alert(data.info);
                    }
                });
        }

        // 退出登录
        User.logout = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/do_logout',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_name = null;
                        User.user_id = null;
                        User.error_info = null;
                        User.detail_info = null;
                        User.productIsCollected = null;
                        User.shopIsCollected = null;
                        User.collectShops = null;
                        User.collectProducts = null;
                        $rootScope.$broadcast('User.logoutSuccess');
                    } else {
                        alert(data.info);
                    }
                });
        }

        // 登录
        User.doLogin = function(userInfo) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/do_login',
                data: $.param(userInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_name = data.data.user_name;
                        User.user_id = data.data.user_id;
                        $rootScope.$broadcast('User.loginSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.loginError');
                    }
                });
        }

        // 保存用户详细信息
        User.saveDetail = function(detailInfo) {
            detailInfo.user_id = User.user_id;
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/save_detail',
                data: $.param(detailInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        $rootScope.$broadcast('User.saveDetailSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.saveDetailError');
                    }
                });
        }

        // 修改密码
        User.savePassword = function (pwdInfo) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/save_password',
                data: $.param(pwdInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    alert(data.info);
                });
        }

        // 收藏商品
        User.collectProduct = function (info) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/save_user_collect_product',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    alert(data.info);
                    $rootScope.$broadcast('User.collectProductSuccess');
                });
        }

        // 收藏店铺
        User.collectShop = function (info) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/save_user_collect_shop',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    alert(data.info);
                    $rootScope.$broadcast('User.collectShopSuccess');
                });
        }

        // 检查当前商品是否已经收藏
        User.getProductIsCollected = function (info) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_product_is_collected',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    User.productIsCollected = data.data;
                    $rootScope.$broadcast('User.getProductIsCollectedSuccess');
                });
        }

        // 检查当前店铺是否已经收藏
        User.getShopIsCollected = function (info) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_shop_is_collected',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    User.shopIsCollected = data.data;
                    $rootScope.$broadcast('User.getShopIsCollectedSuccess');
                });
        }

        // 获取所有收藏的店铺
        User.getCollectedShops = function (user_id) {
            var info = {'user_id': user_id};
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/get_collect_shops_by_user_id',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    User.collectShops = data.data;
                    $rootScope.$broadcast('User.getCollectedShopsSuccess');
                });
        }

        // 获取所有收藏的商品
        User.getCollectedProducts = function (user_id) {
            var info = {'user_id': user_id};
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/get_collect_products_by_user_id',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    User.collectProducts = data.data;
                    $rootScope.$broadcast('User.getCollectedProductsSuccess');
                });
        }
        
        // 获取买家信息
        User.getSellerInfo = function (user_id) {
            var info = {'user_id': user_id};
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/get_user_by_id',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    User.sellerInfo = data.data;
                    $rootScope.$broadcast('User.getSellerInfoSuccess');
                });
        }

        return User;
    }
]);

// 店铺
HomeServices.service('Shop', ['$http', '$rootScope',
    function($http, $rootScope) {
        var Shop = {};
        Shop.data = null;
        Shop.recommend_list = null;

        // 获取当前SESSION中的店铺信息
        Shop.getShopInfo = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/ShopAPI/get_shop_info',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Shop.data = data.data;
                        $rootScope.$broadcast('Shop.getShopInfoSuccess');
                    } else {
                        $rootScope.$broadcast('Shop.getShopInfoError');
                    }
                });
        }

        // 获取推荐店铺列表
        Shop.getRecommendShopInfo = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/ShopAPI/get_recommend',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Shop.recommend_list = data.data;
                        $rootScope.$broadcast('Shop.getRecommendShopInfoSuccess');
                    }
                });
        }

        // 保存店铺信息
        Shop.saveShopInfo = function(shopInfo) {
            $http({
                method: 'POST',
                url: appPath + 'API/ShopAPI/save_shop_info',
                data: $.param(shopInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Shop.getShopInfo();
                        alert("信息保存成功!");
                        $rootScope.$broadcast('Shop.saveShopInfoSuccess');
                    } else {
                        $rootScope.$broadcast('Shop.saveShopInfoError');
                    }
                });
        }

        // 处理代理
        Shop.handlerDelegate = function (info) {
            $http({
                method: 'POST',
                url: appPath + 'API/ShopAPI/save_shop_info',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        $rootScope.$broadcast('Shop.handlerDelegateSuccess');
                    } else {
                        $rootScope.$broadcast('Shop.handlerDelegateError');
                    }
                });
        }

        // 根据ID获取店铺信息
        Shop.getShopInfoById = function(shopid) {
            var shopInfo = {'id': shopid};
            $http({
                method: 'POST',
                url: appPath + 'API/ShopAPI/get_shop_by_id',
                data: $.param(shopInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Shop.data = data.data;
                        $rootScope.$broadcast('Shop.getShopInfoByIdSuccess');
                    } else {
                        $rootScope.$broadcast('Shop.getShopInfoByIdError');
                    }
                });
        }

        return Shop;
    }
]);

// 热门品牌
HomeServices.service('PopularBrand', ['$http', '$rootScope',
    function($http, $rootScope) {
        var PopularBrand = {};
        PopularBrand.brandList = null;

        PopularBrand.getBrandList = function() {
            $http({
                method: 'POST',
                url: appPath + 'Home/PopularBrand/get_brand_list',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        PopularBrand.brandList = data.data;
                        $rootScope.$broadcast('PopularBrand.brandListUpdate');
                    }
                });
        }


        return PopularBrand;
    }
]);

// 热卖宝贝
HomeServices.service('HotBaby', ['$http', '$rootScope',
    function($http, $rootScope) {
        var HotBaby = {};
        HotBaby.babyRowsWomen = null;

        HotBaby.getBabyRowsWomen = function() {
            $http({
                method: 'POST',
                url: appPath + 'Home/HotBaby/get_baby_rows_women',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        HotBaby.babyRowsWomen = data.data;
                        $rootScope.$broadcast('HotBaby.babyRowsWomenUpdate');
                    }
                });
        }

        return HotBaby;
    }
]);

// 商品
HomeServices.service('Product', ['$http', '$rootScope',
    function($http, $rootScope) {
        var Product = {};
        Product.list = null;
        Product.type_list = null;
        Product.type_drop_list = null;
        Product.recommend_list = null;
        Product.currentTypeInfo = null;
        Product.currentCurrentProduct = null;
        Product.recommend_list = null;
        Product.fatherList = null;

        Product.getProductListById = function (id) {
            $http({
                method: 'POST',
                url: appPath + 'API/PtypeAPI/get_child_product_by_id',
                data: "id="+id,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    Product.list = data.data;
                    $rootScope.$broadcast('Product.getProductListByIdSuccess');
                });
        }

        Product.getFatherListById = function (id) {
            $http({
                method: 'POST',
                url: appPath + 'API/PtypeAPI/get_father_by_id',
                data: "id="+id,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    Product.fatherList = data.data;
                    $rootScope.$broadcast('Product.getFatherListByIdSuccess');
                });
        }

        Product.getTypeById = function (id) {
            Product.getProductListById(id);
            Product.getFatherListById(id);
            $http({
                method: 'POST',
                url: appPath + 'API/PtypeAPI/get_type_by_id',
                data: "id="+id,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    Product.currentTypeInfo = data;
                    $rootScope.$broadcast('Product.getTypeByIdSuccess');
                });
        }

        Product.getCurrentProduct = function (id) {
            $http({
                method: 'POST',
                url: appPath + 'API/ProductAPI/get_product_by_id',
                data: "id="+id,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.currentCurrentProduct = data.data;
                        $rootScope.$broadcast('Product.getCurrentProductSuccess');
                    };
                });
        }

        // 获得所有商品类别列表树
        Product.getTypeList = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/PtypeAPI/get_all_types_for_seller',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.type_list = data.data;
                        $rootScope.$broadcast('Product.getPTypeListSuccess');
                    }
                });
        }

        // 获得所有商品类别列表数组
        Product.getTypeListDropArr = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/PtypeAPI/get_all_types_for_droplist',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.type_drop_list = data.data;
                        $rootScope.$broadcast('Product.getTypeListDropArrSuccess');
                    }
                });
        }

        // 保存商品类别
        Product.savePtypeInfo = function(info) {
            $http({
                method: 'POST',
                url: appPath + 'API/PtypeAPI/save_type_pub',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.getTypeList();
                        $rootScope.$broadcast('Product.savePtypeInfoSuccess');
                    }
                });
        }

        // 删除商品类别
        Product.removePtypeInfo = function (typeId) {
             $http({
                method: 'POST',
                url: appPath + 'API/PtypeAPI/remove_type',
                data: 'type_id='+typeId,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.getTypeList();
                        $rootScope.$broadcast('Product.removePtypeInfoSuccess');
                    }
                });
        }

        // 获得所有商品列表
        Product.getList = function(shopId) {
            $http({
                method: 'POST',
                url: appPath + 'API/ProductAPI/get_product_by_shop',
                data: 'shop_id=' + shopId,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.list = data.data;
                        $rootScope.$broadcast('Product.getProductListSuccess');
                    }
                });
        }

        // 获得推荐商品列表
        Product.getRecommendList = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/ProductAPI/get_recommend',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.recommend_list = data.data;
                        $rootScope.$broadcast('Product.getRecommendListSuccess');
                    }
                });
        }

        // 保存商品信息
        Product.saveInfo = function(info) {
            $http({
                method: 'POST',
                url: appPath + 'API/ProductAPI/save_product_info',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    // 保存是否成功
                    if (data.status == 1) {
                        alert("信息保存成功!");
                        // 广播事件
                        $rootScope.$broadcast('Product.saveProductInfoSuccess');
                        // 重新获取列表
                        Product.getList(info['shop_id']);
                    } else {
                        $rootScope.$broadcast('Product.saveProductInfoError');
                    }
                });
        }

        // 删除商品信息
        Product.deleteInfo = function(productId) {
            $http({
                method: 'POST',
                url: appPath + 'API/ProductAPI/delete_product_info',
                data: 'product_id=' + productId,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        $rootScope.$broadcast('Product.deleteProductInfoSuccess');
                    } else {
                        $rootScope.$broadcast('Product.deleteProductInfoError');
                    }
                });
        }

        return Product;
    }
]);