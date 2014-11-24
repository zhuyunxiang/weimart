var HomeCtrls = angular.module('HomeCtrls', []);

HomeCtrls.controller('homeCtrl', ['$scope',
	function($scope){
		$scope.userInfo = {email: "tests@qq.com"};
	}
]);

HomeCtrls.controller('registerCtrl', ['$scope', '$http',
	function($scope, $http) {
		$scope.resetUserInfo = function () {
			$scope.userInfo = {
				email: "",
				password: "",
				repassword: "",
				autoLogin: false
			};
		}

		$scope.submitInfo = function () {
			$http({
        		method: 'GET',
			    url: appIndexUrl+'Home/test'
			}).success(function(data, status, headers, config) {
			    console.log("success...");
			    console.log(data);
			    $scope.users=data;
			}).error(function(data, status, headers, config) {
			    console.log("error...");
			});
		}
	}
]);