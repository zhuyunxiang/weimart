var WechatDirectives = angular.module('WechatDirectives', []);

WechatDirectives.directive('showNameModalDirective', function () {
	return {
        restrict: 'AE',   
        link: function(scope,elem,attr){
            elem.bind('click',function(){
	            $("#menuModal").modal('show');
            });
            elem.bind('mouseover',function(){
                elem.css('cursor','pointer');
            });
        }
    }
});
