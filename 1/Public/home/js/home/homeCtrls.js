var HomeCtrls = angular.module('HomeCtrls', []);

// 主页的Controller Start
HomeCtrls.controller('homeCtrl', ['$scope',
    function($scope) {
        $scope.userInfo = {
            email: "tests@qq.com"
        };

        $scope.tplURLs = {
            pictureShow: publicUrl + 'tpl/home/picture_show.html',
            leftNavOuterContainer: publicUrl + 'tpl/home/nav_containers.html',
            superAdContainer: publicUrl + 'tpl/home/super_ad.html',
            rightNavOuterContainer: publicUrl + 'tpl/home/right_container.html',
        };

        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.fasionClothes = {
            0: [
            {"class": "type-name","content": "潮流女装"},
            {"class": "commen","content": "春新品"},
            {"class": "hot","content": "韩版"},
            {"class": "commen","content": "毛衣"},
            {"class": "commen","content": "薄开衫"},
            {"class": "commen","content": "本身裙"},
            ],

            1: [
            {"class": "type-name","content": "潮流女装"},
            {"class": "commen","content": "春装"},
            ],
        };
    }
]);
// 主页的Controller End

// 热卖宝贝的Controller Start
HomeCtrls.controller('hotBabyCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {

        };
    }
])
// 热卖宝贝的Controller End

// 注册的Controller
HomeCtrls.controller('registerCtrl', ['$scope', '$http',
    function($scope, $http) {
        $scope.resetUserInfo = function() {
            $scope.userInfo = {
                email: "",
                password: "",
                repassword: "",
                autoLogin: false
            };
        }

        $scope.submitInfo = function() {
            $http({
                method: 'POST',
                url: appIndexUrl + 'Index/doRegister',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
                },

                data: $scope.userInfo

            }).success(function(data, status, headers, config) {
                console.log("success...");
                console.log(data);
                $scope.users = data;
            }).error(function(data, status, headers, config) {
                console.log("error...");
            });
        }
    }
]);