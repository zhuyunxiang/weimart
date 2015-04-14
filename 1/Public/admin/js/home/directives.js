var directives = angular.module('directives', []);

// 更改面包屑的文字内容
directives.directive('changeNav', function() {
    return {
        restrict: 'ACEM',
        scope: {
            info: '=info',
        },
        link: function(scope, element, attrs) {
            element.bind('click', function() {
                scope.info = element[0].childNodes[0].childNodes[1].nodeValue;
                var hrefUrl = element[0].childNodes[0].attributes[0].nodeValue;
                scope.$apply();
            });
        },
    };
});