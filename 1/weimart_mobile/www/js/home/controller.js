var controllers = angular.module('controllers', []);
// 主页
controllers.controller('homeCtrl', ['$scope', '$state',
    function($scope, $state) {
    	$scope.u = navigator.userAgent;
        $scope.swipeTo = function(direction, state) {
            // alert(state.current.name);
            console.log(state);
            switch (state.current.name) {
                case 'home':
                    if (direction == 'right') {
                        alert('左边没有啦');
                    } else {
                        $state.go('list');
                    }
                    break;
                case 'list':
                    if (direction == 'right') {
                        $state.go('home');
                    } else {
                        $state.go('personal');
                    }
                    break;
                case 'personal':
                    if (direction == 'right') {
                        $state.go('list');
                    } else {
                        $state.go('conf');
                    }
                    break;
                case 'conf':
                    if (direction == 'right') {
                        $state.go('personal');
                    } else {
                        alert('右边没有啦');
                    }
                    break;
            }
        }


        $scope.itemList = [
            {"url": "2.jpg"},
            {"url": "3.jpg"},
            {"url": "4.jpg"},
            {"url": "2.jpg"},
            {"url": "3.jpg"},
            {"url": "4.jpg"},
        ];


        
    }
]);
// 分类
controllers.controller('listCtrl', ['$scope',
    function($scope) {

        $scope.women = [
        {"pic":"1.jpg", "name":"T恤"},
        {"pic":"1.jpg", "name":"衬衫"}, 
        {"pic":"1.jpg", "name":"T恤"},
        {"pic":"1.jpg", "name":"衬衫"}, 
        {"pic":"1.jpg", "name":"T恤"},
        {"pic":"1.jpg", "name":"衬衫"}, 
        {"pic":"1.jpg", "name":"T恤"},
        {"pic":"1.jpg", "name":"衬衫"}, 
        {"pic":"1.jpg", "name":"T恤"},
        {"pic":"1.jpg", "name":"衬衫"}, 
        {"pic":"1.jpg", "name":"T恤"},
        {"pic":"1.jpg", "name":"衬衫"},
        ];
        $scope.womenShoes = [
        {"pic":"4.jpg", "name":"商务鞋"},
        {"pic":"5.jpg", "name":"单鞋"}, 
        {"pic":"4.jpg", "name":"商务鞋"},
        {"pic":"5.jpg", "name":"单鞋"}, 
        ];
        $scope.men = [
        {"pic":"3.jpg", "name":"短袖"},
        {"pic":"3.jpg", "name":"2袖"}, 
        {"pic":"3.jpg", "name":"短袖"},
        {"pic":"3.jpg", "name":"短袖"}, 
        {"pic":"3.jpg", "name":"短袖"},
        {"pic":"3.jpg", "name":"短袖"}, 
        {"pic":"3.jpg", "name":"短袖"},
        {"pic":"3.jpg", "name":"短袖"}, 
        ];
        $scope.menShoes = [
        {"pic":"2.jpg", "name":"皮鞋"},
        {"pic":"6.jpg", "name":"商务鞋"}, 
        {"pic":"2.jpg", "name":"皮鞋"},
        {"pic":"6.jpg", "name":"商务鞋"}, 
        ];
        $scope.pkage = [
        {"pic":"7.jpg", "name":"女包"},
        {"pic":"8.jpg", "name":"男包"}, 
        {"pic":"9.jpg", "name":"钱包"},
        {"pic":"7.jpg", "name":"女包"}, 
        ];

    }
]);
// 我的
controllers.controller('personalCtrl', ['$scope',
    function($scope) {

    }
]);

// 设置
controllers.controller('confCtrl', ['$scope', '$state', 'Auth',
    function($scope, $state, Auth) {
        // 判断是否已经登陆
        if (!Auth.isLoggedIn()) {
            $state.go('login');
        } else {
            $scope.userInfo = Auth.getUser();

            $scope.logOut = function() {
                if (confirm("确定要退出吗?")) {
                    Auth.logOut();
                    $scope.userInfo = null;
                    $state.go('login');
                };
            }
        }
    }
]);

// 登陆页面
controllers.controller('loginCtrl', ['$scope', '$state', 'User', 'Auth',
    function($scope, $state, User, Auth) {
        $scope.doLogin = function() {
            User.doLogin($scope.loginInfo);

            $scope.$on('User.loginSuccess', function(event) {
                $state.go('conf');
            })
        }
    }
]);

// 注册页面
controllers.controller('registerCtrl', ['$scope', '$state',
    function($scope, $state) {
        $scope.doRegister = function() {
            console.log($scope.registerInfo);
        }
    }
]);