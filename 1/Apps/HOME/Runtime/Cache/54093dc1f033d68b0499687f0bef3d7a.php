<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html ng-app="HomeApp">
    <head>
        <title>Weimart Control Center</title>
        <script type="text/javascript" src="__PUBLIC__/js/lib/angular.js"></script>
        <script type="text/javascript" src="__PUBLIC__/js/lib/angular-route.js"></script>
        <script type="text/javascript" src="__PUBLIC__/js/lib/jquery.min.js"></script>
        <script type="text/javascript" src="__PUBLIC__/js/lib/bootstrap.min.js"></script>
        <script type="text/javascript" src="__PUBLIC__/js/home/homeCtrls.js"></script>
        <link rel="stylesheet" href="__PUBLIC__/css/lib/bootstrap.min.css">
    </head>
    <body>
        <div ng-view></div>

        <script type="text/javascript">
        var app = angular.module('HomeApp', ['ngRoute', 'HomeCtrls']);
        app.config(['$routeProvider', function($routeProvider) {
            $routeProvider.
                when('/home', { templateUrl: '__PUBLIC__/tpl/home/home.html', controller: "homeCtrl" }).
                otherwise({ redirectTo: '/home' });
        } ]);
        </script>
    </body>
</html>