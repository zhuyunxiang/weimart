var controllers = angular.module('controllers', []);

// 主页
controllers.controller('adminCtrl', ['$scope','$state',
    function($scope,$state) {
        $scope.navContent = "欢迎访问";
        $scope.goHome = function () {
            $state.go('home');
        }
    }
]);

// 用户管理
controllers.controller('userAdminCtrl', ['$scope', 'User',
    function($scope, User) {

        User.getUserList();

        $scope.$on('User.getUserListSuccess', function(event) {
            $scope.user_list = User.user_list;
        });

        $scope.removeUserInfo = function(userId) {
            if (confirm("确定要删除?不可回复!")) {
                User.removeUserInfo(userId);
            };
        }
    }
]);

// 商品管理
controllers.controller('productAdminCtrl', ['$scope', 'Product',
    function($scope, Product) {

        Product.getAllList();
        $scope.$on('Product.getAllListSuccess', function(event) {
            $scope.allList = Product.allList;
        });

        $scope.setRecommend = function (productInfo, isRecommend) {
            productInfo.is_recommend = isRecommend;
            productInfo.type_id = productInfo.types[0].type_id;
            Product.saveInfo(productInfo);
        }
    }
]);

// 店铺管理
controllers.controller('productShopCtrl', ['$scope', 'Shop',
    function($scope, Shop) {

        Shop.getAllList();
        $scope.$on('Shop.getAllShopListSuccess', function(event) {
            $scope.allList = Shop.allList;
        });

        $scope.stage_list = {0:'未认证', 1:'已认证', null:'不详'};

        $scope.setStage = function (shopInfo) {
            Shop.saveInfo(shopInfo);
        }

        $scope.setRecommend = function (shopInfo, isRecommend) {
            shopInfo.is_recommend = isRecommend;
            Shop.saveInfo(shopInfo);
        }
    }
]);