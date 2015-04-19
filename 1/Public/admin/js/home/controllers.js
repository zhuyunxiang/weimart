var controllers = angular.module('controllers', []);

controllers.controller('adminCtrl', ['$scope',
    function($scope) {
        $scope.navContent = "欢迎访问";
    }
]);

controllers.controller('userAdminCtrl', ['$scope', 'User',
    function($scope, User) {

        User.getUserList();

        $scope.$on('User.getUserListSuccess', function(event) {
            $scope.user_list = User.user_list;
        });

        $scope.removeUserInfo = function(userId) {
            if (confirm("确定要删除?不可回复!")) {
                User.removeUserInfo(userId);
            };
        }
    }
])