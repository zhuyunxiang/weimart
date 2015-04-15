var services = angular.module('services', []);

services.service('ProductType', ['$http', '$rootScope',
    function($http, $rootScope) {
        var ProductType = {};
        ProductType.info = '数据获取成功！';
        ProductType.status = 1;
        ProductType.data = null;

        ProductType.getInfo = function() {
            $http({
                method: 'POST',
                url: appPath + '/API/PtypeAPI/get_all_types',
                data: null,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function(data) {
                ProductType.data = data;
                $rootScope.$broadcast('ProductType.update');
            });
        }

        ProductType.saveInfo = function(info) {
            $http({
                method: 'POST',
                url: appPath + '/API/PtypeAPI/save_type',
                data: $.param(info),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function(data) {
                alert(data.info)
                if (data.status == 1) {
                    ProductType.getInfo();
                }
            });
        }

        ProductType.removeInfo = function(typeId) {
            $http({
                method: 'POST',
                url: appPath + '/API/PtypeAPI/remove_type',
                data: 'type_id=' + typeId,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function(data) {
                alert(data.info)
                if (data.status == 1) {
                    ProductType.getInfo();
                }
            });
        }

        return ProductType;
    }
])