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
            {"class": "hot","content": "韩版"},
            {"class": "commen","content": "毛衣"},
            {"class": "commen","content": "薄开衫"},
            {"class": "commen","content": "本身裙"},
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
            hotBabyMain : publicUrl + 'tpl/home/hot_baby_main.html',
        };
    }
]);
// 热卖宝贝的Controller End

// 热卖品牌的Controller Start
HomeCtrls.controller('popularBrandCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            popularBrandNav : publicUrl + 'tpl/home/popular_brand_nav.html',
            popularBrandMain : publicUrl + 'tpl/home/popular_brand_main.html',
        };

        $scope.brandList = [
        {"url": "1.jpg"},
        {"url": "2.jpg"},
        {"url": "3.jpg"},
        {"url": "4.jpg"},
        {"url": "5.jpg"},
        {"url": "6.jpg"},
        {"url": "7.jpg"},
        {"url": "8.jpg"},
        {"url": "9.jpg"},
        {"url": "10.jpg"},
        {"url": "11.jpg"},
        {"url": "12.jpg"},
        {"url": "13.jpg"},
        {"url": "14.jpg"},
        {"url": "15.jpg"},
        {"url": "16.jpg"},
        {"url": "17.jpg"},
        {"url": "18.jpg"},
        {"url": "19.jpg"},
        {"url": "20.jpg"},
        {"url": "21.jpg"},
        {"url": "22.jpg"},
        {"url": "23.jpg"},
        {"url": "24.jpg"},
        ];

        $scope.item_list = [
            {"url": "25.jpg"},
            {"url": "26.jpg"},
            {"url": "27.jpg"},
            {"url": "28.jpg"},
            {"url": "29.jpg"},
            {"url": "30.jpg"},
        ];
    }
]);
// 热卖品牌的Controller End

// 热卖店家的Controller Start
HomeCtrls.controller('popularShopCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            
        };
    }
]);
// 热卖店家的Controller End

// 代理中心的Controller Start
HomeCtrls.controller('delegateCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            
        };
    }
]);
// 代理中心的Controller End

// 更多优惠的Controller Start
HomeCtrls.controller('moreCheapCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
        	
        };
    }
]);
// 更多优惠的Controller End

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