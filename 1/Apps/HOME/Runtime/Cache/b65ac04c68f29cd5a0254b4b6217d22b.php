<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html ng-app="MyApp">
<head>
    <title>Weimart Control Center</title>
    <script type="text/javascript" src="__PUBLIC__/js/lib/angular.js"></script>
    <script type="text/javascript" src="__PUBLIC__/js/lib/angular-route.js"></script>
    <script type="text/javascript" src="__PUBLIC__/js/lib/jquery.min.js"></script>
    <script type="text/javascript" src="__PUBLIC__/js/lib/bootstrap.min.js"></script>
    <link rel="stylesheet" href="__PUBLIC__/css/lib/bootstrap.min.css">
</head>
<body>
    <div ng-view></div>
    
    <script type="text/ng-template" id="put.html">
        <div ng-controller="PhoneDetailCtrl">
            <h2>{{title}} - {{id}}</h2>
            <a href="#/phones">go to list</a>
        </div>
    </script>

    <script type="text/javascript">
        var app = angular.module('MyApp', ["ngRoute"], function() { });
        app.config(['$routeProvider', function($routeProvider) {
            $routeProvider.
                when('/phones', { templateUrl: '__PUBLIC__/js/show.html', controller: "PhoneListCtrl" }).
                when('/phones/:id', { templateUrl: 'put.html', controller: "PhoneDetailCtrl" }).
                otherwise({ redirectTo: '/phones' });
        } ]);
        app.controller('PhoneListCtrl', function($scope) {
            $scope.title = 'List';
        });
        app.controller('PhoneDetailCtrl', function($scope, $routeParams) {
            $scope.title = 'Detail';
            $scope.id = $routeParams.id;
        });
    </script>
</body>
</html>