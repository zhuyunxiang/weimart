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

        // 生成分页信息
        var generatePageData = function(totalCount, content) {
            $scope.customReturnList = content;
            $scope.pagination.totalCount = totalCount;
            $scope.pagination.allPages = Math.ceil($scope.pagination.totalCount / $scope.pagination.pageSize);
            $scope.pageData = [];
            for (var i = 0; i < $scope.pagination.allPages; i++) {
                $scope.pageData.push(i);
            };
        }

        // 获得数据库数据
        var getReturns = function(currentPage, pageSize, keyword) {
            var params = {
                'currentPage': currentPage,
                'pageSize': pageSize,
                'keyword': keyword
            };
            $http({
                method: 'POST',
                url: getCustomReturnUrl,
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

        // 自启动，入口
        getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);

        // 根据关键字搜索
        $scope.searchKeyword = function() {
            if ($scope.pagination.tempKeyword && $scope.pagination.tempKeyword.trim() != '') {
                $scope.pagination = {
                    currentPage: 1,
                    pageSize: 10,
                    totalCount: 0,
                    keyword: $scope.pagination.tempKeyword.trim(),
                    allPages: 1,
                };
            } else {
                $scope.pagination = {
                    currentPage: 1,
                    pageSize: 10,
                    totalCount: 0,
                    keyword: '',
                    allPages: 1,
                };
            }
            getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);
        }

        // 上一页
        $scope.prePage = function() {
            if ($scope.pagination.currentPage > 1) {
                $scope.jumpToPage($scope.pagination.currentPage - 1);
            } else {
                alert("对不起，当前是首页！");
            }
        }

        // 下一页
        $scope.nextPage = function() {
            if ($scope.pagination.currentPage < $scope.pagination.allPages) {
                $scope.jumpToPage($scope.pagination.currentPage + 1);
            } else {
                alert("对不起，已经是最后一页啦！");
            }
        }

        // 跳转到指定页
        $scope.jumpToPage = function(page, keyword) {
            $scope.pagination.currentPage = page;
            $scope.pagination.keyword = keyword;
            getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);
        }

        // 计算str长度和对象中元素个数
        function count(o) {
            var t = typeof o;
            if (t == 'string') {
                return o.length;
            } else if (t == 'object') {
                var n = 0;
                for (var i in o) {
                    n;
                }
                return n;
            }
            return false;
        }

        // 根据字符串分割字符串到数组
        var getStrArr = function() {
            var str = $scope.tempReturn.msg_keyword.substr(0, count($scope.tempReturn.msg_keyword) - 1);
            $scope.tempReturn.keyword_arr = new Array(); //定义一数组 
            $scope.tempReturn.keyword_arr = str.split(","); //字符分割 
        }

        // 根据数组拼接字符串
        var getStrFromArr = function() {
            var str = '';
            if ($scope.tempReturn.keyword_arr) {
                for (var i = 0; i < $scope.tempReturn.keyword_arr.length; i++) {
                    str = str + $scope.tempReturn.keyword_arr[i] + ',';
                };
            }
            $scope.tempReturn.msg_keyword = str;
        }

        // 显示修改框
        $scope.editCustomReturn = function(key) {
            $scope.textInfo.modalTitleText = '修改条目';
            $scope.tempReturn = $scope.customReturnList[key];
            getStrArr();
        }

        // 添加关键字（子）
        $scope.addKeyword = function() {
            // way1
            // if ($scope.tempReturn&&$scope.tempReturn.msg_keyword&&$scope.tempReturn.keywordItem.trim()) {
            //     $scope.tempReturn.msg_keyword = $scope.tempReturn.msg_keyword + $scope.tempReturn.keywordItem.trim() + ',';
            // } else {
            //     $scope.tempReturn.msg_keyword = $scope.tempReturn.keywordItem.trim() + ',';
            // }
            // getStrArr();

            // way2
            if ($scope.tempReturn.keywordItem && $scope.tempReturn.keywordItem.trim()) {
                if ($scope.tempReturn.keyword_arr && ($scope.tempReturn.keyword_arr instanceof Array)) {
                    $scope.tempReturn.keyword_arr.push($scope.tempReturn.keywordItem.trim());
                } else {
                    $scope.tempReturn.keyword_arr = [];
                    $scope.tempReturn.keyword_arr.push($scope.tempReturn.keywordItem.trim());
                }
                getStrFromArr();
            } else {
                alert("关键字不能为空！");
            }

            $scope.tempReturn.keywordItem = '';
        }

        // 删除关键字（子）
        $scope.removeKeywordItem = function(index) {
            $scope.tempReturn.keyword_arr.splice(index, 1);
            getStrFromArr();
        }

        // 显示添加框
        $scope.prepareAdd = function() {
            $scope.textInfo.modalTitleText = '添加新记录';
            $scope.tempReturn = {};
        }

        // 删除
        $scope.removeCustomReturn = function(key) {
            if (confirm("确定要删除么？")) {
                $http({
                    method: 'POST',
                    url: removeCustomReturnUrl,
                    data: $.param($scope.customReturnList[key]),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                })
                    .success(function(data) {
                        if (data.status == 1) {
                            alert(data.info);
                            getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);
                        } else {
                            alert(data.info);
                        }
                    });
            };
        }

        // 保存（添加和修改）
        $scope.saveCustomReturn = function() {
            if ($scope.tempReturn.msg_keyword) {
                $http({
                    method: 'POST',
                    url: saveCustomReturnUrl,
                    data: $.param($scope.tempReturn),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                })
                    .success(function(data) {
                        if (data.status == 1) {
                            alert(data.info);
                            getReturns($scope.pagination.currentPage, $scope.pagination.pageSize, $scope.pagination.keyword);
                        } else {
                            alert(data.info);
                        }
                    });
            } else {
                alert('关键字不能为空！');
            }
        }
    }
])