var services = angular.module('services', []);

services.service('MediaList', ['$http', '$rootScope',
    function($http, $rootScope) {
    	MediaList = {};

    	MediaList.data = [
    	{'media_id': 1,'media_title':'题目1', 'media_img': null},
    	{'media_id': 1,'media_title':'题目2', 'media_img': null},
    	{'media_id': 1,'media_title':'题目3', 'media_img': null},
    	{'media_id': 1,'media_title':'题目4', 'media_img': null},
    	{'media_id': 1,'media_title':'题目5', 'media_img': null},
    	];

    	return MediaList;
    }
])