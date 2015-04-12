var directives = angular.module('directives', []);
directives.directive('editItem', ['MediaList',
    function(MediaList) {
        return {
            require: '^showTips',
            restrict: 'ACEM',
            scope: {
                index: '=index',
            },
            link: function(scope, element, attrs, showTipsCtrl) {
                element.bind('click', function() {

                    $(".right").css("margin-top", scope.index * 100 + 'px');

                });
            },
        };
    }
]);

directives.directive('saveInfo', ['MediaList',
    function(MediaList) {
        return {
            require: '^showTips',
            restrict: 'ACEM',
            scope: {
                info: '=info',
                index: '@index'
            },
            link: function(scope, element, attrs, showTipsCtrl) {
                element.bind('click', function() {
                    var data = {'data': scope.info, 'msg_id': scope.index};
                    MediaList.saveInfo(data);

                    scope.$on('MediaList.saveSuccess', function (event) {
                        showTipsCtrl.showSuccess("数据保存成功！");
                    });
                    
                });
            },
        };
    }
]);

directives.directive('showTips', function($timeout) {
    return {
        scope: {},
        restrict: 'AE',
        transclude: true,
        template: '<div ng-transclude></div><div style="z-index:1000;position:fixed;margin:auto;left:0; right:0; top:0;width:1147px;" ng-class="{{tipType}}-tips" ng-hide="hide"><div class="alert alert-{{tipType}} fade in"><button type="button" class="close close-{{tipType}}-tips">×</button> <strong id="error_info_container">{{msgInfo}}</strong><span class="pull-right"><span>{{leftSec}}</span>秒后关闭</span> </div> </div>',
        controller: function($scope, $timeout) {
            $scope.msgInfo = '这个是提示';
            $scope.tipType = 'success';
            $scope.leftSec = 5;
            $scope.hide = true;

            this.showError = function(errorInfo) {
                $scope.msgInfo = errorInfo;
                $scope.tipType = 'error';
                $scope.hide = false;
                $scope.closeTips();
            }

            this.showSuccess = function(successInfo) {
                $scope.msgInfo = successInfo;
                $scope.tipType = 'success';
                $scope.hide = false;
                $scope.closeTips();
            }
        },
        link: function(scope, element, attrs) {
            var closeTips = function() {
                var timer = $timeout(closeTips, 1000);
                if (scope.leftSec > 1) {
                    scope.leftSec--;
                } else {
                    $timeout.cancel(timer);
                    scope.leftSec = 5;
                    scope.hide = true;
                }
            }

            scope.closeTips = function() {
                closeTips();
            };
        }
    }
});