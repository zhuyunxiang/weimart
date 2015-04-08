var app = angular.module('HomeApp', ['ui.router', 'HomeCtrls']);

app.config(function($stateProvider, $urlRouterProvider) {
    // 设置默认显示的页面
    $urlRouterProvider.otherwise("/home");

    $stateProvider
        .state('home', {
            url: "/home",
            templateUrl: publicUrl + 'tpl/home/home.html',
            controller: "homeCtrl"
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
        })
        .state('register', {
            url: "/register",
            templateUrl: publicUrl + 'tpl/home/register.html',
            controller: "registerCtrl"
        });
});