var directives = angular.module('directives', []);

directives.directive('swipeView', function() {
    return {
        restrict: 'AEC',
        scope: {

        },
        link: function(scope, element, attribute) {
            // body...
        }
    }
});

// 完成注册验证及实现
directives.directive('doRegister', ['$state', '$timeout', 'User', 'Auth',
    function($state, $timeout, User, Auth) {
        return {
            restirect: 'AE',
            scope: {
                registerInfo: '=info',
                validateTips: '=vldtip'
            },
            link: function(scope, element, attributes) {
                element.bind('click', function(event) {
                    var validate = true;
                    var step = 0;
                    scope.validateTips.email = " ";
                    scope.validateTips.repassword = " ";
                    scope.validateTips.username = " ";

                    User.getEmailIsRegistered(scope.registerInfo.user_email);
                    User.getNameIsRegistered(scope.registerInfo.user_name);

                    scope.$on('User.emailNotAval', function(event) {
                        scope.validateTips.email = "已注册!";
                        validate = false;
                        step++;
                    });

                    scope.$on('User.emailAval', function(event) {
                        step++;
                    });

                    scope.$on('User.usernameNotAval', function(event) {
                        scope.validateTips.username = "已注册!";
                        validate = false;
                        step++;
                    });

                    scope.$on('User.usernameAval', function(event) {
                        step++;
                    });

                    if ((!scope.registerInfo.user_pwd) || (scope.registerInfo.user_pwd != scope.registerInfo.user_repwd)) {
                        scope.validateTips.repassword = "不一致!";
                        validate = false;
                        step++;
                    } else {
                        step++;
                    }

                    scope.$on('User.registerSuccess', function(event) {
                        scope.registerInfo.user_id = User.user_id;
                        Auth.setUser(scope.registerInfo);
                        $state.go('register.detail');
                    });

                    // 循环检测异步请求是否已经完成
                    var checkAll = function() {
                        var timer = $timeout(checkAll, 1000);
                        if (step == 3) {
                            // 检测验证是否通过
                            if (validate) {
                                User.doRegister(scope.registerInfo);
                            };
                            $timeout.cancel(timer);
                        }
                    }

                    checkAll();
                });
            }
        }
    }
]);

// 保存用户详细信息
directives.directive('saveDetail', ['$state', 'User', 'Auth',
    function($state, User, Auth) {
        return {
            restirect: 'AE',
            scope: {
                userDetailInfo: '=info',
            },
            link: function(scope, element, attributes) {
                element.bind('click', function(event) {
                    var authUser = Auth.getUser();
                    User.user_id = authUser.user_id;

                    User.saveDetail(scope.userDetailInfo);

                    scope.$on('User.saveDetailSuccess', function(event) {
                        Auth.setUser(scope.userDetailInfo);
                        $state.go("conf");
                    });

                    scope.$on('User.saveDetailError', function(event) {
                        alert("保存用户详细信息失败!");
                    });
                });
            }
        }
    }
]);