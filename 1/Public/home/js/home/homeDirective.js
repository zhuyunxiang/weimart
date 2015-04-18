var HomeDirectives = angular.module('HomeDirectives', []);

var compareTo = function() {
    return {
        require: "ngModel",
        scope: {
            otherModelValue: "=compareTo"
        },
        link: function(scope, element, attributes, ngModel) {

            // ngModel.$validators.compareTo = function(modelValue) {
            //     return modelValue == scope.otherModelValue;
            // };

            // scope.$watch("otherModelValue", function() {
            //     ngModel.$validate();
            // });
            // console.log(ngModel);
        }
    };
};

HomeDirectives.directive("compareTo", compareTo);

HomeDirectives.directive('logOut', ['User',
    function(User) {
        return {
            restirect: 'AE',
            scope: {

            },
            link: function(scope, element, attributes) {
                element.bind('click', function(event) {
                    User.logout();
                });
            }
        }
    }
]);

HomeDirectives.directive('doLogin', ['$state', 'User',
    function($state, User) {
        return {
            restirect: 'AE',
            scope: {
                loginInfo: '=info',
                errorTips: '=errorinfo'
            },
            link: function(scope, element, attributes) {
                element.bind('click', function(event) {
                    User.doLogin(scope.loginInfo);
                    scope.$on('User.loginSuccess', function(event) {
                        $state.go('home');
                    });

                    scope.$on('User.loginError', function(event) {
                        scope.errorTips = User.error_info;
                    });
                });
            }
        }
    }
]);

// 完成注册验证及实现
HomeDirectives.directive('doRegister', ['$state', '$timeout', 'User',
    function($state, $timeout, User) {
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
                        scope.validateTips.email = "邮箱已注册!";
                        validate = false;
                        step++;
                    });

                    scope.$on('User.emailAval', function(event) {
                        step++;
                    });

                    scope.$on('User.usernameNotAval', function(event) {
                        scope.validateTips.username = "用户名已注册!";
                        validate = false;
                        step++;
                    });

                    scope.$on('User.usernameAval', function(event) {
                        step++;
                    });

                    if ((!scope.registerInfo.user_pwd) || (scope.registerInfo.user_pwd != scope.registerInfo.user_re_pwd)) {
                        scope.validateTips.repassword = "两次密码不一致!";
                        validate = false;
                        step++;
                    } else {
                        step++;
                    }

                    scope.$on('User.registerSuccess', function(event) {
                        $state.go('home');
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