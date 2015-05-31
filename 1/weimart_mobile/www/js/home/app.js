var app = angular.module('homeApp', ['ngAnimate', 'ngTouch', 'ui.router', 'filters', 'controllers', 'services', 'directives']);

app.run(['$rootScope', '$state', '$stateParams', '$location', 'Auth',
    function($rootScope, $state, $stateParams, $location, Auth) {
        $rootScope.$state = $state;
        $rootScope.$stateParams = $stateParams;

        $rootScope.$on('$routeChangeStart', function(evt, next, curr) {
            alert('qiehuanluyou');
            if (!Auth.isAuthorized(next.$$route.access_level)) {
                if (Auth.isLoggedIn()) {
                    alert("已经登陆！");
                } else {
                    alert("请登陆！");
                }
            };
        });
    }
]);

// 身份认证
app.config(function($httpProvider) {
    var interceptor = ['$q', '$rootScope', 'Auth',
        function($q, $rootScope, Auth) {
            return {
                'response': function(resp) {
                    if (resp.config.url == 'tpl/home/login.html') {
                        // Auth.setToken(resp.data.token);
                    };
                    return resp;
                },
                'responseError': function(rejection) {
                    switch (rejection.status) {
                        case 401:
                            alert('401');
                            if (rejection.config.url !== 'login') {
                                // 判断当前页是否为登录页
                                $rootScope.$broadcast('auth:loginRequired');
                            };
                            break;
                        case 403:
                            $rootScope.$broadcast('auth:forbidden');
                            break;
                        case 404:
                            $rootScope.$broadcast('page:notFound');
                            break;
                        case 500:
                            $rootScope.$broadcast('server:error');
                            break;
                    }
                    return $q.reject(rejection);
                }
            };
        }
    ];

    $httpProvider.interceptors.push(interceptor);

});

app.constant('ACCESS_LEVELS', {
    pub: 1,
    user: 2
});

app.config(['$stateProvider', '$urlRouterProvider', 'ACCESS_LEVELS',
    function($stateProvider, $urlRouterProvider, ACCESS_LEVELS) {
        // 设置默认显示的页面
        $urlRouterProvider.otherwise("/home");

        $stateProvider
        // 主页
        .state('home', {
            url: "/home",
            templateUrl: 'tpl/home/index.html',
            controller: "homeCtrl"
        })
        // 主页 == 热卖宝贝
        .state('home.hotbaby', {
            url: "/hotbaby",
            templateUrl: 'tpl/home/hotbaby.html',
            controller: "hotbabyCtrl"
        })
        .state('home.hotbaby.detail', {
            url: "/detail",
            templateUrl: 'tpl/home/detail.html',
            controller: "homeCtrl"
        })
        // 主页 == 热门卖家
        .state('home.hotshop', {
            url: "/hotshop",
            templateUrl: 'tpl/home/hotshop.html',
            controller: "hotshopCtrl"
        })
        // 主页 == 热门卖家==详情
        .state('inshop', {
            url: "/inshop/{id:[0-9]{1,4}}",
            templateUrl: 'tpl/home/inshop.html',
            controller: "inshopCtrl"
        })
        
         // 主页 == 热门品牌
        .state('home.hotbrand', {
            url: "/hotbrand",
            templateUrl: 'tpl/home/hotbrand.html',
            controller: "brandCtrl"
        })
        // 主页 == 热门品牌 == 品牌
        .state('home.hotbrand.brand', {
            url: "/brand",
            templateUrl: 'tpl/home/brand.html',
            controller: "homeCtrl"
        })
        
        //主页 == 代理服务
        .state('home.agence', {
            url: "/agence",
            templateUrl: 'tpl/home/agence.html',
            controller: "agenceCtrl"
        })
        // 首页分类
        .state('type', {
            url: "/type/{id:[0-9]{1,4}}",
            templateUrl: 'tpl/home/type.html',
            controller: "typeCtrl"
        })
        // 分类
        .state('list', {
            url: "/list",
            templateUrl: 'tpl/home/list.html',
            controller: "listCtrl"
        })
        .state('list.classType', {
            url: "/classType",
            templateUrl: 'tpl/home/class_type.html',
            controller: "homeCtrl"
        })
        .state('list.classType.goods', {
            url: "/goods",
            templateUrl: 'tpl/home/goods.html',
            controller: "homeCtrl"
        })
        //商品详情 
        .state('goods', {
            url: "/goods/{id:[0-9]{1,4}}",
            templateUrl: 'tpl/home/goods.html',
            controller: "goodsCtrl"
        })
        // 我的
        .state('personal', {
            url: "/personal",
            templateUrl: 'tpl/home/personal.html',
            controller: "personalCtrl"
        })
        //卖家中心 订单管理
        .state('personal.orderManage', {
            url: "/orderManage",
            templateUrl: 'tpl/home/orderManage.html',
            controller: "personalCtrl"
        })
        //卖家中心 销售管理
        .state('personal.marketManage', {
            url: "/marketManage",
            templateUrl: 'tpl/home/marketManage.html',
            controller: "marketManageCtrl"
        })
        //卖家中心 销售管理 发布宝贝
        .state('personal.marketManage.publish', {
            url: "/publish/{id:[0-9]{1,4}}",
            templateUrl: 'tpl/home/publish.html',
            controller: "productCtrl"
        })
        //卖家中心 客户管理
        .state('personal.clientManage', {
            url: "/clientManage",
            templateUrl: 'tpl/home/clientManage.html',
            controller: "personalCtrl"
        })
        //卖家中心 收入管理
        .state('personal.incomeManage', {
            url: "/incomeManage",
            templateUrl: 'tpl/home/incomeManage.html',
            controller: "personalCtrl"
        })
         //卖家中心 店铺管理
        .state('personal.shop', {
            url: "/shop",
            templateUrl: 'tpl/home/shop2.html',
            controller: "personalCtrl"
        })
        .state('shop', {
            url: "/shop",
            templateUrl: 'tpl/home/shop.html',
            controller: "personalCtrl"
        })
        // 设置
        .state('conf', {
            url: "/conf",
            templateUrl: 'tpl/home/conf.html',
            controller: "confCtrl",
        })
        // 登陆页面
        .state('login', {
            url: "/login",
            templateUrl: 'tpl/home/login.html',
            controller: "loginCtrl"
        })
        // 注册页面
        .state('register', {
            url: "/register",
            templateUrl: 'tpl/home/register.html',
            controller: "registerCtrl"
        })
        // 个人详细信息
        .state('register.detail', {
            url: "/detail",
            templateUrl: 'tpl/home/register.detail.html',
            controller: "registerCtrl"
        });
    }
]);