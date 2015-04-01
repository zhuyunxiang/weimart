var myAppModule = angular.module('MyApp', ['ui.tree']);
var myController = myAppModule.controller('myController', ['$scope', function($scope){
	$scope.list = [
		{title: '周树青',items:[{title:'朱云祥',items:[{title:'朱云祥'}]}]},
		{title: '支广生',items:[{title:'许一超'}]},
	];
}]);