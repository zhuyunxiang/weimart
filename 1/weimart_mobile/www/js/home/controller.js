var controllers = angular.module('controllers', []);
// 主页
controllers.controller('homeCtrl', ['$scope', '$state',
    function($scope, $state) {
    	$scope.u = navigator.userAgent;
        $scope.songs = ['Sgt. Peppers Lonely Hearts Club Band', 'With a Little Help from My Friends', 'Lucy in the Sky with Diamonds', 'Getting Better', 'Fixing a Hole', 'Shes Leaving Home', 'Being for the Benefit of Mr. Kite!', 'Within You Without You', 'When Im Sixty-Four', 'Lovely Rita', 'Good Morning Good Morning', 'Sgt. Peppers Lonely Hearts Club Band (Reprise)', 'A Day in the Life'];
        $scope.swipeTo = function(direction, state) {
            // alert(state.current.name);
            console.log(state);
            switch (state.current.name) {
                case 'home':
                    if (direction == 'right') {
                        alert('左边没有啦');
                    } else {
                        $state.go('list');
                    }
                    break;
                case 'list':
                    if (direction == 'right') {
                        $state.go('home');
                    } else {
                        $state.go('personal');
                    }
                    break;
                case 'personal':
                    if (direction == 'right') {
                        $state.go('list');
                    } else {
                        $state.go('conf');
                    }
                    break;
                case 'conf':
                    if (direction == 'right') {
                        $state.go('personal');
                    } else {
                        alert('右边没有啦');
                    }
                    break;
            }
        }
    }
]);
// 分类
controllers.controller('listCtrl', ['$scope',
    function($scope) {

    }
]);
// 我的
controllers.controller('personalCtrl', ['$scope',
    function($scope) {

    }
]);

// 设置
controllers.controller('confCtrl', ['$scope',
    function($scope) {

    }
]);