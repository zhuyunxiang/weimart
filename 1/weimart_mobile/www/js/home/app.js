var app = angular.module('homeApp', ['ngAnimate', 'ngTouch','ui.router', 'controllers', 'directives']);

app.run(['$rootScope', '$state', '$stateParams',
    function($rootScope, $state, $stateParams) {
        $rootScope.$state = $state;
        $rootScope.$stateParams = $stateParams;
    }
]);

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {
        // 设置默认显示的页面
        $urlRouterProvider.otherwise("/");

        $stateProvider
        // 主页
        .state('home', {
            url: "/",
            templateUrl: 'tpl/home/index.html',
            controller: "homeCtrl"
        })
        // 分类
        .state('list', {
            url: "/list",
            templateUrl: 'tpl/home/list.html',
            controller: "listCtrl"
        })
        // 我的
        .state('personal', {
            url: "/personal",
            templateUrl: 'tpl/home/personal.html',
            controller: "personalCtrl"
        })
        // 设置
        .state('conf', {
            url: "/conf",
            templateUrl: 'tpl/home/conf.html',
            controller: "confCtrl"
        });
    }
]);