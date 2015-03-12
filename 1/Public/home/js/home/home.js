var app = angular.module('HomeApp', ['ui.router', 'HomeCtrls']);

app.config(function($stateProvider, $urlRouterProvider) {
    // 设置默认显示的页面
    $urlRouterProvider.otherwise("/home");

    $stateProvider
        .state('home', {
            url: "/home",
            templateUrl: publicUrl + 'home/tpl/home/home.html',
            controller: "homeCtrl"
        })
        .state('register', {
            url: "/register",
            templateUrl: publicUrl + 'home/tpl/home/register.html',
            controller: "registerCtrl"
        });
});