var controllers = angular.module('controllers', []);

// 主页
controllers.controller('adminCtrl', ['$scope',
    function($scope) {
        $scope.navContent = "欢迎访问";
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
    }
]);