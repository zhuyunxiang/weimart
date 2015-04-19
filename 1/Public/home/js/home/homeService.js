var HomeServices = angular.module('HomeServices', []);

HomeServices.service('User', ['$http', '$rootScope',
    function($http, $rootScope) {
        var User = {};
        User.user_name = null;
        User.user_id = null;
        User.error_info = null;

        User.checkLogin = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_login',
                data: 'null',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_name = data.data.user_name;
                        User.user_id = data.data.user_id;
                        $rootScope.$broadcast('User.isLogin');
                    }
                });
        }

        User.getEmailIsRegistered = function(email) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_email',
                data: 'email=' + email,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.data == false) {
                        $rootScope.$broadcast('User.emailNotAval');
                    } else {
                        $rootScope.$broadcast('User.emailAval');
                    }
                });
        }

        User.getNameIsRegistered = function(username) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/check_username',
                data: 'username=' + username,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.data == false) {
                        $rootScope.$broadcast('User.usernameNotAval');
                    } else {
                        $rootScope.$broadcast('User.usernameAval');
                    }
                });
        }

        User.doRegister = function(info) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/do_register',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_name = info.user_name;
                        User.user_id = data.data;
                        $rootScope.$broadcast('User.registerSuccess');
                    } else {
                        alert(data.info);
                    }
                });
        }

        User.logout = function() {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/do_logout',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_name = false;
                        User.user_id = false;
                        $rootScope.$broadcast('User.logoutSuccess');
                    } else {
                        alert(data.info);
                    }
                });
        }

        User.doLogin = function(userInfo) {
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/do_login',
                data: $.param(userInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_name = data.data.user_name;
                        User.user_id = data.data.user_id;
                        $rootScope.$broadcast('User.loginSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.loginError');
                    }
                });
        }

        User.saveDetail = function(detailInfo) {
        	detailInfo.user_id = User.user_id;
            $http({
                method: 'POST',
                url: appPath + 'API/UserAPI/save_detail',
                data: $.param(detailInfo),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                	console.log(data);
                    if (data.status == 1) {
                        $rootScope.$broadcast('User.saveDetailSuccess');
                    } else {
                        User.error_info = data.info;
                        $rootScope.$broadcast('User.saveDetailError');
                    }
                });
        }

        return User;
    }
]);