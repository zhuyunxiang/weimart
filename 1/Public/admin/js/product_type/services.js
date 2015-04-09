var services = angular.module('services', []);

services.service('ProductType', ['$http', '$rootScope',
    function($http, $rootScope) {
        var ProductType = {};
        ProductType.info = '数据获取成功！';
        ProductType.status = 1;
        ProductType.data = [{
            "id": 1,
            "title": "node1",
            "nodes": [{
                "id": 11,
                "title": "node1.1",
                "nodes": [{
                    "id": 111,
                    "title": "node1.1.1",
                    "nodes": []
                }]
            }, {
                "id": 12,
                "title": "node1.2",
                "nodes": []
            }],
        }, {
            "id": 2,
            "title": "node2",
            "nodes": [{
                "id": 21,
                "title": "node2.1",
                "nodes": []
            }, {
                "id": 22,
                "title": "node2.2",
                "nodes": []
            }],
        }, {
            "id": 3,
            "title": "node3",
            "nodes": [{
                "id": 31,
                "title": "node3.1",
                "nodes": []
            }],
        }, {
            "id": 4,
            "title": "node4",
            "nodes": [{
                "id": 41,
                "title": "node4.1",
                "nodes": []
            }],
        }];

        ProductType.getInfo = function() {
            $http({
                method: 'POST',
                url: getInfoUrl,
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function(data) {
                ProductType.data = data.data;
                $rootScope.$broadcast('ProductType.update');
            });
        }

        ProductType.addInfo = function(info) {
            $http({
                method: 'POST',
                url: saveInfoUrl,
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function(data) {
                if (data.status == 1) {
                    ProductType.getList();
                };
                ProductType.status = data.status;
                ProductType.info = data.info;
            });
        }
        return ProductType;
    }
])