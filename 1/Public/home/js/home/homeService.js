var HomeServices = angular.module('HomeServices', []);

// 用户
HomeServices.service('User', ['$http', '$rootScope',
    function($http, $rootScope) {
        var User = {};
        User.user_name = null;
        User.user_id = null;
        User.error_info = null;
        User.detail_info = null;

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
                        User.user_name = false;
                        User.user_id = false;
                        $rootScope.$broadcast('User.logoutSuccess');
                    } else {
                        alert(data.info);
                    }
                });
        }

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

        return User;
    }
]);

// 店铺
HomeServices.service('Shop', ['$http', '$rootScope',
    function($http, $rootScope) {
        var Shop = {};
        Shop.data = null;

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
                        $rootScope.$broadcast('User.getShopInfoError');
                    }
                });
        }

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
                        $rootScope.$broadcast('User.saveShopInfoError');
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

    	PopularBrand.getBrandList = function () {
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

        Product.getList = function (shopId) {
            $http({
                method: 'POST',
                url: appPath + 'API/ProductAPI/get_product_by_shop',
                data: 'shop_id='+shopId,
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
                    if (data.status == 1) {
                        alert("信息保存成功!");
                        $rootScope.$broadcast('Product.saveProductInfoSuccess');
                        Product.getList(info['shop_id']);
                    } else {
                        $rootScope.$broadcast('Product.saveProductInfoError');
                    }
                });
        }
        return Product;
    }
])