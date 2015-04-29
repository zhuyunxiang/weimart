var services = angular.module('services', ['ngCookies']);

services.factory('Auth', ['$cookieStore', 'ACCESS_LEVELS',
	function($cookieStore, ACCESS_LEVELS) {
		var _user = $cookieStore.get('user');

		var setUser = function(user) {
			if (!user.role || user.role < 0) {
				user.role = ACCESS_LEVELS.pub;
			};

			_user = user;
			$cookieStore.put('user', _user);
		}

		return {
			isAuthorized: function(lvl) {
				return _user >= lvl;
			},

			setUser: setUser,
			isLoggedIn: function() {
				return _user ? true : false;
			},
			getUser: function() {
				return _user;
			},
			getId: function() {
				return _user ? _user.user_id : null;
			},
			getToken: function() {
				return _user ? _user.token : '';
			},
			logOut: function() {
				$cookieStore.remove('user');
				_user = null;
			}
		};
	}
]);


// 用户信息
services.service('User', ['$http', '$rootScope',
	function($http, $rootScope) {
		var User = {};
		User.user_name = null;
		User.user_id = null;
		User.error_info = null;
		User.detail_info = null;

		User.checkLogin = function() {
			$http({
				method: 'POST',
				url: serverPath + '/API/UserAPI/check_login',
				data: 'null',
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
				.success(function(data) {
					if (data.status == 1) {
						User.detail_info = data.data;
						User.user_name = data.data.user_name;
						User.user_id = data.data.user_id;
						$rootScope.$broadcast('User.isLogin');
					} else {
						$rootScope.$broadcast('User.notLogin');
					}
				});
		}

		User.getEmailIsRegistered = function(email) {
			$http({
				method: 'POST',
				url: serverPath + '/API/UserAPI/check_email',
				data: 'email=' + email,
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
				.success(function(data) {
					if (data.data == false) {
						$rootScope.$broadcast('User.emailNotAval');
					} else {
						$rootScope.$broadcast('User.emailAval');
					}
				});
		}

		User.getNameIsRegistered = function(username) {
			$http({
				method: 'POST',
				url: serverPath + '/API/UserAPI/check_username',
				data: 'username=' + username,
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
				.success(function(data) {
					if (data.data == false) {
						$rootScope.$broadcast('User.usernameNotAval');
					} else {
						$rootScope.$broadcast('User.usernameAval');
					}
				});
		}

		User.doRegister = function(info) {
			console.log(info);
			$http({
				method: 'POST',
				url: serverPath + '/API/UserAPI/do_register',
				data: $.param(info),
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
				.success(function(data) {
					if (data.status == 1) {
						User.user_name = info.user_name;
						User.user_id = data.data;
						$rootScope.$broadcast('User.registerSuccess');
					} else {
						alert(data.info);
					}
				});
		}

		User.logout = function() {
			$http({
				method: 'POST',
				url: serverPath + '/API/UserAPI/do_logout',
				data: null,
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
				.success(function(data) {
					if (data.status == 1) {
						User.user_name = false;
						User.user_id = false;
						$rootScope.$broadcast('User.logoutSuccess');
					} else {
						alert(data.info);
					}
				});
		}

		User.doLogin = function(userInfo) {
			$http({
				method: 'POST',
				url: serverPath + '/API/UserAPI/do_login',
				data: $.param(userInfo),
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
				.success(function(data) {
					if (data.status == 1) {
						User.user_name = data.data.user_name;
						User.user_id = data.data.user_id;
						$rootScope.$broadcast('User.loginSuccess');
					} else {
						User.error_info = data.info;
						$rootScope.$broadcast('User.loginError');
					}
				});
		}

		User.saveDetail = function(detailInfo) {
			detailInfo.user_id = User.user_id;
			$http({
				method: 'POST',
				url: serverPath + '/API/UserAPI/save_detail',
				data: $.param(detailInfo),
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
				.success(function(data) {
					if (data.status == 1) {
						$rootScope.$broadcast('User.saveDetailSuccess');
					} else {
						User.error_info = data.info;
						$rootScope.$broadcast('User.saveDetailError');
					}
				});
		}

		return User;
	}
]);