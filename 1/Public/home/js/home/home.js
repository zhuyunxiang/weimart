var app = angular.module('HomeApp', ['ngRoute', 'HomeCtrls']);

app.config(function($routeProvider) {
    $routeProvider.when('/home',
    {
        templateUrl: publicUrl+'tpl/home/home.html',
        controller: "homeCtrl"
    }).
    when('/register',
    {
        templateUrl: publicUrl+'tpl/home/register.html',
        controller: "registerCtrl"
    }).
    otherwise({ redirectTo: '/home' });
});