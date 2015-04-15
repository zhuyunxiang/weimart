var directives = angular.module('directives', []);
directives.directive('removePtype', ['ProductType',
    function(ProductType) {
        return {
            restrict: 'AE',
            scope: {
                info: '=info',
            },
            link: function(scope, element, attribute) {
                element.bind('click', function() {
                	console.log(scope.info.$modelValue);
                });
            }
        }
    }
]);