var WechatCtrls = angular.module('WechatCtrls', []);

WechatCtrls.controller('wechatCtrl', ['$scope',
	function($scope){
		$scope.menuList = [
		{
			id: 111,
			name: "信息1",
			secondMenuList:
				[
					{id: 112,name: "sm1"},
					{id: 113,name: "sm2"},
					{id: 114,name: "sm3"}
				]
		},
		{
			name: "信息2",
			secondMenuList:
				[
					{id: 115,name: "sm4"},
					{id: 116,name: "sm5"},
					{id: 117,name: "sm6"}
				]
		}];
		$scope.edit_first_munu = function (index) {
			$scope.editMenuName = $scope.menuList[index].name;	
			$scope.editMenuId = $scope.menuList[index].id;

		}
		$scope.edit_second_munu = function (parentIndex,index) {
			$scope.editMenuName = $scope.menuList[parentIndex].secondMenuList[index].name;
			$scope.editMenuId = $scope.menuList[parentIndex].secondMenuList[index].id;
		}
	}
]);
