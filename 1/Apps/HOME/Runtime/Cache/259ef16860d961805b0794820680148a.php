<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html ng-app="LoginModule">
	<head>
		<title>Welcome to Wemart</title>
		<meta charset="utf">
		<script src="__PUBLIC__/js/lib/angular.js" type="text/javascript"></script>
		<script src="__PUBLIC__/js/lib/angular-route.js" type="text/javascript"></script>
		
	</head>
	<body>
		<h1>Welcome to Wemart!</h1>

		<div ng-view>
			
		</div>
		<script>

			angular.module('LoginModule', ['ngRoute']).
			  config(['$routeProvider', function($routeProvider) {
			  $routeProvider.
			      when('/phones', {templateUrl: 'navigation.html',   controller: navController}).
			      when('/phones/:phoneId', {templateUrl: 'partials/phone-detail.html', controller: PhoneDetailCtrl}).
			      otherwise({redirectTo: '/phones'});
			}]);

			// function navRouteConfig ($routeProvider) {
			// 	$routeProvider.
			// 	when('/', {
			// 		controller: navController,
			// 		templateUrl: './navigation.html'
			// 	}).
			// 	otherwise({
			// 		redirectTo: '/'
			// 	});
			// }

			// //LoginService.config(navRouteConfig);

			

			function navController ($scope) {
				$scope.navigation = [{
				text: '123',
				name: 'ceshi'
			}, {
				text: '123',
				name: 'ceshi'
			}
			];
			}
		</script>
	</body>
</html>