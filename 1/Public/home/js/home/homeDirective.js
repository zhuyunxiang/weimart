var HomeDirectives = angular.module('HomeDirectives', []);

// 退出登陆
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

// 登陆
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

// 保存用户详细信息
HomeDirectives.directive('saveDetail', ['$state', 'User',
    function($state, User) {
        return {
            restirect: 'AE',
            scope: {
                userDetailInfo: '=info',
            },
            link: function(scope, element, attributes) {
                element.bind('click', function(event) {

                    if (scope.userDetailInfo.user_header_temp_img && scope.userDetailInfo.user_nick_name && scope.userDetailInfo.user_full_name && scope.userDetailInfo.user_address) {
                        User.saveDetail(scope.userDetailInfo);
                    };

                    scope.$on('User.saveDetailSuccess', function(event) {
                        $state.go('home');
                    });

                    scope.$on('User.saveDetailError', function(event) {
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
                        $state.go('complete_detail');
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