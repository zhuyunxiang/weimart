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
                data: 'msg_id=111',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    MediaList.data = data.data;
                    console.log(MediaList.data);
                    $rootScope.$broadcast('MediaList.update');
                });
        }

        return MediaList;
    }
])