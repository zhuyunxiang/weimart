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
controllers.controller('personalCtrl', ['$upload', '$scope', '$state', 'Shop', 'Auth',
    function($upload, $scope, $state, Shop, Auth) {
        if (Auth.isLoggedIn()) {
            console.log('212');
            Shop.getShopWithUser();
            $scope.$on('Shop.getShopWithUserSuccess', function(event) {
                $scope.hasShop = Shop.hasShop;
            });
            if ('false' == $scope.hasShop) {
                console.log('333');
                $state.go('.shop');
            }
        } else {
            $state.go('login');
        }

        Shop.getMyShop();
        $scope.$on('Shop.getMyShopSuccess', function(event) {
            $scope.myShop = Shop.myShop;

        });

        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + 'API/ShopAPI/save_shop_img',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.editShopInfo.shop_img = uploadPath + 'shop_img/' + data;
                        $scope.editShopInfo.shop_img_temp = uploadPath + 'shop_img/thumb_' + data;
                    });
                }
            }
        };

    }
]);

// 设置
controllers.controller('confCtrl', ['$scope', '$state', 'Auth',
    function($scope, $state, Auth) {
        // 判断是否已经登陆
        if (!Auth.isLoggedIn()) {
            $state.go('login');
        } else {
            $scope.userInfo = Auth.getUser();

            $scope.logOut = function() {
                if (confirm("确定要退出吗?")) {
                    Auth.logOut();
                    $scope.userInfo = null;
                    $state.go('login');
                };
            }
        }
    }
]);

// 登陆页面
controllers.controller('loginCtrl', ['$scope', '$state', 'User', 'Auth',
    function($scope, $state, User, Auth) {
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