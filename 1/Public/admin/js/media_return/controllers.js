var app = angular.module('myApp', ['angularFileUpload', 'ng.ueditor', 'services', 'directives']);

app.controller('myCtrl', ['$scope', '$upload', 'MediaList',
    function($scope, $upload, MediaList) {

        $scope.$on('MediaList.update', function(event) {
            $scope.mediaList = MediaList.data;
            if ($scope.mediaList && $scope.mediaList.length > 0) {
                $scope.editItem = $scope.mediaList[0];
            }
        });

        MediaList.getInfo();
        $scope.mediaList = MediaList.data;

        $scope._simpleConfig = {
            //这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
            toolbars: [
                ["bold", "italic", "underline", "insertunorderedlist", "insertorderedlist", "simpleupload", "insertimage", "removeformat", "forecolor", "backcolor", "link", "scrawl"]
            ],
        }

        $scope.editItemClick = function(index) {
            $scope.editItem = $scope.mediaList[index];
            $scope.editItem.order_index = index;
        }

        $scope.removeItem = function(index) {
            $scope.mediaList.splice(index, 1);
        }

        $scope.addItem = function() {
            var item = {
                media_title: '标题',
                media_msg_id: msgId,
            };

            if ($scope.mediaList && $scope.mediaList.length > 8) {
                alert("对不起，最多只能8项");
            } else {
                if (!$scope.mediaList) {
                    $scope.mediaList = Array(item);
                    $scope.editItem = item;
                } else {
                    $scope.mediaList.push(item);
                }
            }
        }

        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: currentAction + '/save_img',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.editItem.media_img = publicFolder + '/media_img/' + data;
                    });
                }
            }
        };
    }
]);