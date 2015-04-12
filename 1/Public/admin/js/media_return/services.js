var services = angular.module('services', []);

services.service('MediaList', ['$http', '$rootScope',
    function($http, $rootScope) {
        MediaList = {};

        MediaList.data = null;

        MediaList.info = '';
        MediaList.status = 1;

        MediaList.getInfo = function() {
            $http({
                method: 'POST',
                url: getInfoUrl,
                data: 'msg_id='+ msgId,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.data) {
                        MediaList.data = data.data;
                    };
                    $rootScope.$broadcast('MediaList.update');
                });
        }

        MediaList.saveInfo = function (data) {
            $http({
                method: 'POST',
                url: saveInfoUrl,
                data: $.param(data),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        $rootScope.$broadcast('MediaList.saveSuccess');
                    };
                });
        }

        return MediaList;
    }
])