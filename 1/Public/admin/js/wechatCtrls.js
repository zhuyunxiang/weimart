var WechatCtrls = angular.module('WechatCtrls', []);

WechatCtrls.controller('wechatCtrl', ['$scope','$timeout','$http',
	function($scope,$timeout,$http){
		getInfo();

		function getInfo () {
			$http({
		        method  : 'POST',
		        url     : getMenuListUrl,
		        data    : null,
		        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
		    })
	        .success(function(data) {
	 			$scope.menuList = data.data.menuList;
	        });
		}

		$scope.tips = {
			errorShow : false,
			successShow : false,
			leftTime: 4
		}

		function showTipsTimeout () {
			var t = $timeout(showTipsTimeout,1000);
			if ($scope.tips.leftTime > 0) {
				$scope.tips.leftTime--;
			} else {
				$timeout.cancel(t);
				$scope.closeAllTips();
			}
		}

		function showTips (type,text) {
			if (type == 'success') {
				$scope.closeAllTips();
				$scope.tips.successShow = true;
				$scope.tips.Text = text;
				showTipsTimeout();
			} else {
				$scope.closeAllTips();
				$scope.tips.errorShow = true;
				$scope.tips.Text = text;
				showTipsTimeout();
			}
		}

		$scope.defaultCss = {
			hasChild: false,
			toChoose: false
		}

		$scope.closeAllTips = function () {
			$scope.tips = {
				errorShow : false,
				successShow : false,
				leftTime: 4
			}
		}

		$scope.add_first_menu = function () {
			if ($scope.menuList == null || $scope.menuList.length < 3) {
				$scope.menuModalTitle = "添加一级菜单";
				$scope.editMenuInfo = {
					editMenuType : 'addFirst',
					editMenuName: null,
					editMenuId : null,
					editMenuParentId : null,
				}
				$("#menuModal").modal('show');
			} else {
				showTips('error',"对不起，最多只能有3个一级菜单！");
			}
		}

		$scope.edit_first_menu = function (index) {
			$scope.menuModalTitle = "修改一级菜单";
			$scope.editMenuInfo = {
				editMenuType : 'editFirst',
				editMenuName: $scope.menuList[index].menu_name,
				editMenuId : $scope.menuList[index].menu_id,
				editMenuParentId : null,
			}
		}

		$scope.remove_first_menu = function (index) {
			// $scope.menuList.splice(index, 1);	
			$http({
		        method  : 'POST',
		        url     : removeFirstMenuUrl,
		        data    : "menu_id="+$scope.menuList[index].menu_id,  // pass in data as strings
		        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
		    })
		        .success(function(data) {
		            if (data.status === 1) {
		            	showTips('success',data.info);
		            } else {
		            	showTips('error',data.info);
		            }
		 			getInfo();
		        });
		}

		$scope.edit_second_menu = function (parentIndex,index) {
			$scope.menuModalTitle = "修改二级菜单";
			$scope.editMenuInfo = {
				editMenuType : 'editSecond',
				editMenuName: $scope.menuList[parentIndex].secondMenuList[index].menu_name,
				editMenuId :  $scope.menuList[parentIndex].secondMenuList[index].menu_id,
				editMenuParentId : null,
			}
		}

		$scope.add_second_menu = function (index) {
			if ($scope.menuList[index].secondMenuList == null||$scope.menuList[index].secondMenuList.length < 5) {
				$scope.menuModalTitle = "添加二级菜单";
				$scope.editMenuInfo = {
					editMenuType : 'addSecond',
					editMenuName: null,
					editMenuId :  $scope.menuList[index].menu_id,
					editMenuParentId : null,
				}
				$("#menuModal").modal('show');
			} else {
				showTips('error',"对不起，最多只能有5个二级菜单！");
			}
		}

		$scope.remove_second_menu = function (parentIndex,index) {
			$http({
		        method  : 'POST',
		        url     : removeSecondMenuUrl,
		        data    : "menu_id="+$scope.menuList[parentIndex].secondMenuList[index].menu_id,  // pass in data as strings
		        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
		    })
		        .success(function(data) {
		            if (data.status === 1) {
		            	showTips('success',data.info);
		            } else {
		            	showTips('error',data.info);
		            }
		 			getInfo();
		        });
		}

		$scope.save_menu_name = function (argument) {
			if ($scope.editMenuInfo.editMenuName != "" && $scope.editMenuInfo.editMenuName != null) {
				if ($scope.editMenuInfo.editMenuName.length < 6) {
					$http({
				        method  : 'POST',
				        url     : saveMenuInfoUrl,
				        data    : $.param($scope.editMenuInfo),  // pass in data as strings
				        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
				    })
				        .success(function(data) {
				            if (data.status === 1) {
				            	showTips('success',data.info);
				            } else {
				            	showTips('error',data.info);
				            }
				 			getInfo();
				    });
				} else {
					showTips('error',"对不起， 菜单名称不能超过5个字！");
				}
			} else {
				showTips('error',"对不起， 菜单名称不能为空！");
			}
		}

		$scope.editMenuMsg = function (index, parentIndex) {
			// 当前为二级菜单
			if (parentIndex != null) {
				if ($scope.menuList[parentIndex].secondMenuList[index].menu_type == "" || $scope.menuList[parentIndex].secondMenuList[index].menu_type == null) {
					// 未设置消息
					$scope.defaultCss = {
						hasChild: false,
						toChoose: true,
						settedText: false
					}
				} else {
					// 已经设置
					$scope.defaultCss = {
						hasChild: false,
						toChoose: false
					}

					if ($scope.menuList[parentIndex].secondMenuList[index].menu_type == "text") {
						$scope.defaultCss.settedText = true;
						
					};
				}
				
			} else {
				// 当前("一级菜单");
				if ($scope.menuList[index].secondMenuList == null) {
					// 没有子菜单，需设置消息
					$scope.defaultCss = {
						hasChild: false,
						toChoose: true,
						settedText: false
					}
				} else {
					// 有子节点，不能设置消息
					$scope.defaultCss = {
						hasChild: true,
						toChoose: false,
						settedText: false
					}
				}
			}
			
		}
	}
]);
