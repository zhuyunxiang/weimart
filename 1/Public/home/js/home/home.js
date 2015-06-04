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

var app = angular.module('HomeApp', ['angularFileUpload', 'ui.router', 'HomeCtrls', 'filters', 'HomeDirectives', 'HomeServices']);

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
            url: "/product_list/{id:[0-9]{1,4}}",
            templateUrl: publicUrl + 'tpl/home/product_list.html',
            controller: "productListCtrl"
        }).state('product_detail', {
            url: "/product_detail/{id:[0-9]{1,4}}",
            templateUrl: publicUrl + 'tpl/home/product_detail.html',
            controller: "productDetailCtrl"
        }).state('shop_detail', {
            url: "/shop_detail/{id:[0-9]{1,4}}",
            templateUrl: publicUrl + 'tpl/home/shop_detail.html',
            controller: "shopDetailCtrl"
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
            // 卖家中心
            url: "/sellercenter",
            templateUrl: publicUrl + 'tpl/home/sellercenter/index.html',
            controller: "sellerCenterCtrl"
        }).state('buyercenter', {
            // 买家中心
            url: "/buyercenter",
            templateUrl: publicUrl + 'tpl/home/buyercenter/index.html',
            controller: "sellerCenterCtrl"
        }).state('sellercenter.self', {
            // 卖家中心-个人信息
            url: "/self",
            templateUrl: publicUrl + 'tpl/home/sellercenter/self.html',
            controller: "sellerCenterSelfCtrl"
        }).state('buyercenter.self', {
            // 买家中心-个人信息
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