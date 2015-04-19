var services = angular.module('services', []);

services.service('User', ['$http', '$rootScope',
    function($http, $rootScope) {
        var User = {};
        User.user_list = null;

        User.getUserList = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/UserAPI/get_user_list',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.user_list = data.data;
                        $rootScope.$broadcast('User.getUserListSuccess');
                    }
                });
        }

        User.removeUserInfo = function(userId) {
            $http({
                method: 'POST',
                url: appPath + '/API/UserAPI/remove_user',
                data: 'user_id=' + userId,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        User.getUserList();
                        alert("删除成功!");
                        $rootScope.$broadcast('User.removeUserInfoSuccess');
                    }
                });
        }

        return User;
    }
])