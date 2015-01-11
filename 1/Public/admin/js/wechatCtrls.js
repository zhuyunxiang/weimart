var WechatCtrls = angular.module('WechatCtrls', []);

WechatCtrls.controller('wechatCtrl', ['$scope',
	function($scope){
		$scope.menuList = [{name: "信息1",secondMenuList:[{name: "sm"},{name: "sm"},{name: "sm"}]},{name: "信息2",secondMenuList:[{name: "sm"},{name: "sm"},{name: "sm"}]}];
		$scope.edit_first_munu = function (index) {
			$scope.editMenuName = $scope.menuList[index].name;
		}
	}
]);
