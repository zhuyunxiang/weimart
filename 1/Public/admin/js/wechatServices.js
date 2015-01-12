var WechatServices = angular.module('WechatServices', []);

WechatServices.directive('exampleDirective', function () {
	return {
        restrict: 'AE',   
        // replace: false,
        // template: '<p style="background-color:{{color}}"></p>',   
        link: function(scope,elem,attr){
            elem.bind('click',function(){
                elem.css('background-color','white');
	            scope.$apply(function(){
	                scope.color = "white";
	            });
	            alert("123");
            });
            elem.bind('mouseover',function(){
                elem.css('cursor','pointer');
            });
        }
    }
});
