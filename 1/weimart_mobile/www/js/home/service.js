var services = angular.module('services', ['ngCookies']);

services.factory('Auth', ['$cookieStore', 'ACCESS_LEVELS',
    function($cookieStore, ACCESS_LEVELS) {
        var _user = null;
        if (localStorage.getItem("user_info")) {
            _user = JSON.parse(localStorage.getItem("user_info"));
        } else {
            // _user = $cookieStore.get('user');
        }

        var setUser = function(user) {
            // if (!user.role || user.role < 0) {
            // 	console.log('aaa');
            // 	user.role = ACCESS_LEVELS.pub;
            // };

            _user = user;
            // $cookieStore.put('user', _user);
            localStorage.setItem("user_info",JSON.stringify(_user));
        }

        return {
            isAuthorized: function(lvl) {
                return _user >= lvl;
            },

            setUser: setUser,
            isLoggedIn: function() {
                return _user ? true : false;
            },
            getUser: function() {
                return _user;
            },
            getId: function() {
                return _user ? _user.user_id : null;
            },
            getToken: function() {
                return _user ? _user.token : '';
            },
            logOut: function() {
                // $cookieStore.remove('user');
                localStorage.removeItem("user_info");//清除c的值
                _user = null;
            },
        };
    }
]);

// 用户信息
services.service('User', ['$http', '$rootScope', 'Auth',
    function($http, $rootScope, Auth) {
        var User = {};
        User.user_name = null;
        User.user_id = null;
        User.error_info = null;
        User.detail_info = null;

        User.checkLogin = function() {
            $http({
                method: 'POST',
                url: serverPath + '/API/UserAPI/check_login',
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
                url: serverPath + '/API/UserAPI/check_email',
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
                url: serverPath + '/API/UserAPI/check_username',
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
                url: serverPath + '/API/UserAPI/do_register',
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
                url: serverPath + '/API/UserAPI/do_logout',
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
                url: serverPath + '/API/UserAPI/do_login',
                data: $.param(userInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Auth.setUser(data.data);
                        $rootScope.$broadcast('User.loginSuccess');
                    } else {
                        alert("对不起,用户名或密码错误!");
                    }
                });
        }

        User.saveDetail = function(detailInfo) {
            detailInfo.user_id = User.user_id;
            $http({
                method: 'POST',
                url: serverPath + '/API/UserAPI/save_detail',
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

        User.onFavoriteShop = function(info) {
            console.log(info);
            $http({
                method: 'POST',
                url: serverPath + '/API/UserAPI/save_user_collect_shop',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
            console.log(data);

                    if (data.status == 1) {
                        $rootScope.$broadcast('User.onFavoriteShopSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.onFavoriteShopError');
                    }
                });
        }

        User.onFavoriteProd = function(info) {
            $http({
                method: 'POST',
                url: serverPath + '/API/UserAPI/save_user_collect_product',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        $rootScope.$broadcast('User.onFavoriteProdSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.onFavoriteProdError');
                    }
                });
        }

        User.checkShopCollected = function(info) {
            $http({
                method: 'POST',
                url: serverPath + '/API/UserAPI/check_shop_is_collected',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.collectShopState = data.data;
                        console.log(User.collectShopState);
                        $rootScope.$broadcast('User.checkShopCollectedSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.checkShopCollectedError');
                    }
                });
        }

        User.checkProdCollected = function(info) {
            $http({
                method: 'POST',
                url: serverPath + '/API/UserAPI/check_product_is_collected',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.collectProdState = data.data;
                        $rootScope.$broadcast('User.checkProdCollectedSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.checkProdCollectedError');
                    }
                });
        }



        return User;
    }
]);

// 店铺信息
services.service('Shop', ['$http', '$rootScope','Auth',
    function($http, $rootScope,Auth) {
        var Shop = {};
        Shop.allList = null;
        Shop.hasShop = null;

        Shop.clearUp = function () {
            Shop.allList = null;
            Shop.hasShop = null;
            $rootScope.$broadcast('Shop.clearSuccess');
        }

        Shop.getShopWithUser = function () {
            $http({
                method: 'POST',
                url: serverPath + '/API/ShopAPI/get_shop_with_user',
                data: 'null',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {

                    if (data.status == 1) {
                        Shop.hasShop = data.data;
                        $rootScope.$broadcast('Shop.getShopWithUserSuccess');
                    }
                });
        }

        Shop.getShopInfo = function() {
            var user = Auth.getUser();
            if (user && user.shops && user.shops[0]) {
                id = user.shops[0].shop_id;
                $http({
                    method: 'POST',
                    url: appPath + '/API/ShopAPI/get_shop_by_id',
                    data: 'id=' + id,
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
            } else {
                $rootScope.$broadcast('Shop.getShopInfoError');
            }
        }

        Shop.saveShopInfo = function(shopInfo) {
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
                        var user = Auth.getUser();
                        shopInfo.shop_id = data.data;
                        Shop.data = shopInfo;
                        user.shops = [];
                        user.shops.push(shopInfo);
                        Auth.setUser(user);
                        $rootScope.$broadcast('Shop.saveShopInfoSuccess');
                    } else {
                        alert(data.info);
                    }
                });
        }

        Shop.getRecommendShopInfo = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/ShopAPI/get_recommend',
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

        Shop.getShopById = function (id) {
            $http({
                method: 'POST',
                url: appPath + '/API/ShopAPI/get_shop_by_id',
                data: 'id=' + id,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Shop.shopInfoById = data.data;
                        $rootScope.$broadcast('Shop.getShopByIdSuccess');
                    }
                });
        }

        Shop.getAll = function () {
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
                        $rootScope.$broadcast('Shop.getAllSuccess');
                    }
                });
        }

        return Shop;
    }
]);

// 商品
services.service('Product', ['$http', '$rootScope',
    function($http, $rootScope) {
        var Product = {};
        Product.list = null;
        Product.type_list = null;
        Product.type_drop_list = null;
        Product.update_item = null;
        Product.all_list = null;

        // 设置要修改的对象
        Product.setUpdateItem = function (data) {
            Product.update_item = data;
            $rootScope.$broadcast('Product.setUpdateItemSuccess');
            console.log(Product.update_item);
        }

        // 获得所有商品类别列表树
        Product.getTypeList = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/PtypeAPI/get_all_types_for_seller',
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
                url: appPath + '/API/PtypeAPI/get_all_types_for_droplist',
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

        // 获得所有商品列表
        Product.getList = function(shopId) {
            $http({
                method: 'POST',
                url: appPath + '/API/ProductAPI/get_product_by_shop',
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

        // 保存商品信息
        Product.saveInfo = function(info) {
            console.log(info);
            $http({
                method: 'POST',
                url: appPath + '/API/ProductAPI/save_product_info',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        $rootScope.$broadcast('Product.saveProductInfoSuccess');
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
                url: appPath + '/API/ProductAPI/delete_product_info',
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

        //获取所有商品
        Product.getAll = function () {
            $http({
                method: 'POST',
                url: appPath + '/API/ProductAPI/get_all_online_product',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        Product.all_list = data.data;
                        $rootScope.$broadcast('Product.getAllSuccess');
                    } else {
                        $rootScope.$broadcast('Product.getAllError');
                    }
                });
        }

        // 获得推荐商品列表
        Product.getRecommendList = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/ProductAPI/get_recommend',
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

        return Product;
    }
]);

// 分类
services.service('Ptype', ['$http', '$rootScope',
    function($http, $rootScope) {
        var Ptype = {};
        Ptype.list = null;
        
        Ptype.getListById = function (id) {
            $http({
                method: 'POST',
                url: appPath + '/API/PtypeAPI/get_type_by_id',
                data: 'id=' + id,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    console.log(data);
                    Ptype.list = data;
                    $rootScope.$broadcast('Ptype.getListByIdSuccess');
                    
                });
        }
        return Ptype;
    }
]);