var controllers = angular.module('controllers', []);

controllers.controller('adminCtrl', ['$scope', function($scope){
	$scope.navContent = "欢迎访问";
}]);