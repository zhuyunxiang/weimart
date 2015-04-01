var HomeCtrls = angular.module('HomeCtrls', []);

HomeCtrls.controller('homeCtrl', ['$scope',
	function($scope){
		$scope.userInfo = {email: "tests@qq.com"};

		$scope.tplURLs = {
			pictureShow: publicUrl+'tpl/home/picture_show.html',
			leftNavOuterContainer: publicUrl+'tpl/home/nav_containers.html',
			superAdContainer: publicUrl+'tpl/home/super_ad.html',
		};

		$scope.imageURLs = {
			'publicUrl': publicUrl,
			'logo': commenUrl+'img/logo-mini.png',
		};
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
        		method: 'POST',
			    url: appIndexUrl+'Index/doRegister',
			    headers: {
				 	'Content-Type' : 'application/x-www-form-urlencoded; charset=UTF-8'
				}, 

	   			data: $scope.userInfo

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