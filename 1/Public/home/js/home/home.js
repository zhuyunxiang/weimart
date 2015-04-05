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
        })
        .state('register', {
            url: "/register",
            templateUrl: publicUrl + 'tpl/home/register.html',
            controller: "registerCtrl"
        });
});