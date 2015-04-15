var controllers = angular.module('controllers', []);
controllers.controller('treeCtrl', ['$scope', '$filter', 'ProductType',
    function($scope, $filter, ProductType) {

        $scope.setAdd = function(scope) {
            var nodeData = scope.$modelValue;
            $scope.editType = {
                'type_name': null,
                'super_type_id': nodeData.type_id,
                'action_type': 'add'
            }
            $scope.textInfo = {
                'modalTitleText': "添加新分类"
            };
        }

        $scope.removeType = function (scope) {
            if (confirm("确定要删除?")) {
                ProductType.removeInfo(scope.$modelValue.type_id);
            };
        }

        $scope.setRoot = function () {
            $scope.editType = {
                'type_name': null,
                'super_type_id': 0,
                'action_type': 'add'
            }
            $scope.textInfo = {
                'modalTitleText': "添加新分类"
            };
        }

        $scope.saveType = function () {
            ProductType.saveInfo($scope.editType);
        }

        $scope.visible = function(item) {
            if ($scope.query && $scope.query.length > 0 && item.type_name.indexOf($scope.query) == -1) {
                return false;
            }
            return true;
        };

        $scope.textInfo = {
            'modalTitleText': "添加新分类"
        };

        ProductType.getInfo();
        $scope.data = ProductType.data;

        $scope.$on('ProductType.update', function (event) {
            $scope.data = ProductType.data;
        })
    }
]);