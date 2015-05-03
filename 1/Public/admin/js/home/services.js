var services = angular.module('services', []);

// 用户
services.service('User', ['$http', '$rootScope',
    function($http, $rootScope) {
        var User = {};
        User.user_list = null;

        User.getUserList = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/UserAPI/get_user_list',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_list = data.data;
                        $rootScope.$broadcast('User.getUserListSuccess');
                    }
                });
        }

        User.removeUserInfo = function(userId) {
            $http({
                method: 'POST',
                url: appPath + '/API/UserAPI/remove_user',
                data: 'user_id=' + userId,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.getUserList();
                        alert("删除成功!");
                        $rootScope.$broadcast('User.removeUserInfoSuccess');
                    }
                });
        }

        return User;
    }
]);

// 商品
services.service('Product', ['$http', '$rootScope',
    function($http, $rootScope) {
        var Product = {};
        Product.allList = null;

        Product.getAllList = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/ProductAPI/get_all',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.allList = data.data;
                        $rootScope.$broadcast('Product.getAllListSuccess');
                    }
                });
        }

        return Product;
    }
]);

// 店铺
services.service('Shop', ['$http', '$rootScope',
    function($http, $rootScope) {
        var Shop = {};
        Shop.allList = null;

        // 获得所有店铺列表
        Shop.getAllList = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/ShopAPI/get_all',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Shop.allList = data.data;
                        $rootScope.$broadcast('Shop.getAllShopListSuccess');
                    }
                });
        }

        // 保存店铺信息
        Shop.saveInfo = function (shopInfo) {
            $http({
                method: 'POST',
                url: appPath + '/API/ShopAPI/save_shop_info',
                data: $.param(shopInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Shop.getAllList();
                        $rootScope.$broadcast('Shop.saveInfoSuccess');
                    } else {
                        alert("店铺信息保存失败!");
                    }
                });
        }

        return Shop;
    }
]);