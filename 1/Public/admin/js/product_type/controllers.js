var controllers = angular.module('controllers', []);
controllers.controller('treeCtrl', ['$scope', '$filter', 'ProductType',
    function($scope, $filter, ProductType) {

        $scope.remove = function(scope) {
            scope.remove();
        };

        $scope.newSubItem = function(scope) {
            var nodeData = scope.$modelValue;
            nodeData.nodes.push({
                id: nodeData.id * 10 + nodeData.nodes.length,
                title: nodeData.title + '.' + (nodeData.nodes.length + 1),
                nodes: []
            });
        };

        $scope.visible = function(item) {
            if ($scope.query && $scope.query.length > 0 && item.title.indexOf($scope.query) == -1) {
                return false;
            }
            return true;
        };

        $scope.findNodes = function() {

        };

        $scope.data = ProductType.data;
    }
]);