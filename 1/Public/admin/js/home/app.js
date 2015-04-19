var adminApp = angular.module('adminApp', ['ui.router', 'controllers', 'directives', 'services']);

adminApp.config(function($stateProvider, $urlRouterProvider) {
    // 设置默认显示的页面
    $urlRouterProvider.otherwise("/home");

    $stateProvider
    // 主页
    .state('home', {
        url: "/home",
        templateUrl: 'main_ifram.html'
    }).state('user_admin', {
        url: "/user_admin",
        templateUrl: publicPath + '/admin/tpl/user_admin/index.html',
        controller: "userAdminCtrl",
    });
});