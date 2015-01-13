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
		$scope.add_first_munu = function () {
			$scope.menuModalTitle = "添加一级菜单";
			$scope.editMenuName = null;	
			$scope.editMenuId = null;
		}

		$scope.edit_first_munu = function (index) {
			$scope.menuModalTitle = "修改一级菜单";
			$scope.editMenuName = $scope.menuList[index].name;	
			$scope.editMenuId = $scope.menuList[index].id;
		}

		$scope.remove_first_munu = function (index) {
			$scope.menuList.splice(index, 1);	
		}

		$scope.edit_second_munu = function (parentIndex,index) {
			$scope.menuModalTitle = "修改二级菜单";
			$scope.editMenuName = $scope.menuList[parentIndex].secondMenuList[index].name;
			$scope.editMenuId = $scope.menuList[parentIndex].secondMenuList[index].id;
		}

		$scope.add_second_munu = function (index) {
			$scope.menuModalTitle = "添加二级菜单";
			$scope.editMenuName = null;
			$scope.editMenuId = null;
		}

		$scope.remove_second_munu = function (parentIndex,index) {
			$scope.menuList[parentIndex].secondMenuList.splice(index, 1);
		}
	}
]);
