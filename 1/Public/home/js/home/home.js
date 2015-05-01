var app = angular.module('HomeApp', ['angularFileUpload', 'ui.router', 'HomeCtrls', 'HomeDirectives', 'HomeServices']);

app.run(['$rootScope', '$state', '$stateParams','User',
    function($rootScope, $state, $stateParams, User) {
        $rootScope.$state = $state;
        $rootScope.$stateParams = $stateParams;

        $rootScope.$on('User.logoutSuccess', function (event) {
            $rootScope.$state.go('login');
        });
    }
]);

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {
        // 设置默认显示的页面
        $urlRouterProvider.otherwise("/home");

        $stateProvider
        // 主页
        .state('home', {
            url: "/home",
            templateUrl: publicUrl + 'tpl/home/home.html',
            controller: "homeCtrl"
        }).state('home/sports', {
            url: "/home/sports",
            templateUrl: publicUrl + 'tpl/home/sports.html',
            controller: "sportsCtrl"
        }).state('home/type', {
            url: "/home/type",
            templateUrl: publicUrl + 'tpl/home/type.html',
            controller: "typeCtrl"
        }).state('hot_baby', {
            url: "/hot_baby",
            templateUrl: publicUrl + 'tpl/home/hot_baby.html',
            controller: "hotBabyCtrl"
        }).state('popular_brand', {
            url: "/popular_brand",
            templateUrl: publicUrl + 'tpl/home/popular_brand.html',
            controller: "popularBrandCtrl"
        }).state('popular_shop', {
            url: "/popular_shop",
            templateUrl: publicUrl + 'tpl/home/popular_shop.html',
            controller: "popularShopCtrl"
        }).state('delegate', {
            url: "/delegate",
            templateUrl: publicUrl + 'tpl/home/delegate.html',
            controller: "delegateCtrl"
        }).state('more_cheap', {
            url: "/more_cheap",
            templateUrl: publicUrl + 'tpl/home/more_cheap.html',
            controller: "moreCheapCtrl"
        }).state('product_list', {
            url: "/product_list",
            templateUrl: publicUrl + 'tpl/home/product_list.html',
            controller: "productListCtrl"
        }).state('register', {
            url: "/register",
            templateUrl: publicUrl + 'tpl/home/control/register.html',
            controller: "registerCtrl"
        }).state('login', {
            url: "/login",
            templateUrl: publicUrl + 'tpl/home/control/login.html',
            controller: "loginCtrl"
        }).state('complete_detail', {
            url: "/complete_detail",
            templateUrl: publicUrl + 'tpl/home/control/complete_detail.html',
            controller: "completeDetailCtrl"
        }).state('sellercenter', {
            url: "/sellercenter",
            templateUrl: publicUrl + 'tpl/home/sellercenter/index.html',
            controller: "sellerCenterCtrl"
        }).state('sellercenter.self', {
            url: "/self",
            templateUrl: publicUrl + 'tpl/home/sellercenter/self.html',
            controller: "sellerCenterSelfCtrl"
        }).state('sellercenter.shop', {
            url: "/shop",
            templateUrl: publicUrl + 'tpl/home/sellercenter/shop_info.html',
            controller: "sellerCenterShopCtrl"
        }).state('sellercenter.product', {
            url: "/product",
            templateUrl: publicUrl + 'tpl/home/sellercenter/product_info.html',
            controller: "sellerCenterProductCtrl"
        }).state('sellercenter.type', {
            url: "/type",
            templateUrl: publicUrl + 'tpl/home/sellercenter/product_type.html',
            controller: "sellerCenterProductTypeCtrl"
        }).state('sellercenter.punish', {
            url: "/punish",
            templateUrl: publicUrl + 'tpl/home/sellercenter/punish.html',
            controller: "sellerCenterShopCtrl"
        })
    }
]);