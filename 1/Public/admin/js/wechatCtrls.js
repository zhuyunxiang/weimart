var WechatCtrls = angular.module('WechatCtrls', []);

WechatCtrls.controller('wechatCtrl', ['$scope','$http',
	function($scope,$http){

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

		$scope.save_menu_name = function (argument) {
			$scope.formData = {u:"zyx",p:"123"};
			$http({
		        method  : 'POST',
		        url     : test,
		        data    : $.param($scope.formData),  // pass in data as strings
		        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
		    })
		        .success(function(data) {
		            console.log(data);
		 
		            // if (!data.success) {
		            //     // if not successful, bind errors to error variables
		            //     $scope.errorName = data.errors.name;
		            //     $scope.errorSuperhero = data.errors.superheroAlias;
		            // } else {
		            //     // if successful, bind success message to message
		            //     $scope.message = data.message;
		            // }
		        });
		}
	}
]);
