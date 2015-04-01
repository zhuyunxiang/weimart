var customReturnCtrls = angular.module('customReturnCtrls', []);

customReturnCtrls.controller('customReturnCtrl', ['foo','$scope', '$timeout', '$http',
    function(foo,$scope, $timeout, $http) {
        $scope.tips = {
            errorShow: false,
            successShow: false,
            leftTime: 4
        }

        function showTipsTimeout() {
            var t = $timeout(showTipsTimeout, 1000);
            if ($scope.tips.leftTime > 0) {
                $scope.tips.leftTime--;
            } else {
                $timeout.cancel(t);
                $scope.closeAllTips();
            }
        }

        function showTips(type, text) {
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

        $scope.closeAllTips = function() {
            $scope.tips = {
                errorShow: false,
                successShow: false,
                leftTime: 4
            }
        }
alert(foo.variable);
foo.getPrivate();
        // getInfo();

        // function getInfo() {
        //     $http({
        //         method: 'POST',
        //         url: getWechatInfoUrl,
        //         data: null,
        //         headers: {
        //             'Content-Type': 'application/x-www-form-urlencoded'
        //         }
        //     })
        //         .success(function(data) {
        //             if (data.status == 1) {
        //                 $scope.editWechatInfo = data.data;
        //             } else {
        //                 showTips('error', data.info);
        //             }
        //         });
        // }

        // $scope.saveInfoClick = function () {
        // 	$http({
        //         method: 'POST',
        //         url: saveWechatInfoUrl,
        //         data: $.param($scope.editWechatInfo),
        //         headers: {
        //             'Content-Type': 'application/x-www-form-urlencoded'
        //         }
        //     })
        //         .success(function(data) {
        //             if (data.status == 1) {
        //                 showTips('success', data.info);
        //                 getInfo();
        //             } else {
        //                 showTips('error', data.info);
        //             }
        //         });
        // }


    }
]);