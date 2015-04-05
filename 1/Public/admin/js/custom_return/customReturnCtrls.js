var customReturnCtrls = angular.module('customReturnCtrls', []);

var customReturnCtrl = customReturnCtrls.controller('customReturnCtrl', ['$scope', '$timeout', '$http',
    function($scope, $timeout, $http) {
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
        // alert(foo.variable);
        // foo.getPrivate();
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
        //  $http({
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

customReturnCtrl.controller('textReturnCtrl', ['$http', '$scope',
    function($http, $scope) {
        $scope.textInfo = {
            modalTitleText: '添加新记录',
        };

        $scope.pagination = {
            currentPage: 1,
            pageSize: 10,
            totalCount: 0,
            keyword: '',
            allPages: 1,
        };

        var generatePageData = function(totalCount, content) {
            $scope.customReturnList = content;
            $scope.pagination.totalCount = totalCount;
            $scope.pagination.allPages = Math.ceil($scope.pagination.totalCount / $scope.pagination.pageSize);
            $scope.pageData = [];
            for (var i = 0; i < $scope.pagination.allPages; i++) {
                $scope.pageData.push(i);
            };
            console.log($scope.pageData);
        }

        var getReturns = function(currentPage, pageSize, keyword) {
            var params = {
                'currentPage': currentPage,
                'pageSize': pageSize,
                'keyword': keyword
            };
            $http({
                method: 'POST',
                url: getcustomReturnUrl,
                data: $.param(params),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .success(function(data) {
                    if (data.status == 1) {
                        generatePageData(data.data.totalCount, data.data.content);
                    } else {
                        alert("对不起，链接服务器失败！请重试!");
                    }
                });
        }

        getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);

        $scope.searchKeyword = function () {
            if ($scope.pagination.tempKeyword&&$scope.pagination.tempKeyword.trim()!='') {
                $scope.pagination = {
                    currentPage: 1,
                    pageSize: 10,
                    totalCount: 0,
                    keyword: $scope.pagination.tempKeyword.trim(),
                    allPages: 1,
                };
                getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);
            } else {
                alert("对不起，搜索条件不能为空！");
            }
        }

        $scope.prePage = function () {
            if ($scope.pagination.currentPage > 1) {
                $scope.jumpToPage($scope.pagination.currentPage-1);
            } else {
                alert("对不起，当前是首页！");
            }
        }

        $scope.nextPage = function () {
            if ($scope.pagination.currentPage < $scope.pagination.allPages) {
                $scope.jumpToPage($scope.pagination.currentPage+1);
            } else {
                alert("对不起，已经是最后一页啦！");
            }
        }

        $scope.jumpToPage = function (page, keyword) {
            $scope.pagination.currentPage = page;
            $scope.pagination.keyword = keyword;
            getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);
        }
    }
])