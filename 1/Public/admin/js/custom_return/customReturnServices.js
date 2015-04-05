var customReturnServices = angular.module('customReturnServices', []);

// customReturnServices.service('foo', ['$http',

//     function($http) {
//         var thisIsPrivate = "Private";
//         this.variable = "This is public";
//         this.getPrivate = function() {

//             $http({
//                 method: 'POST',
//                 url: getcustomReturnUrl,
//                 data: null,
//                 headers: {
//                     'Content-Type': 'application/x-www-form-urlencoded'
//                 }
//             })
//                 .success(function(data) {
//                     console.log(data);
//                 });
//             return thisIsPrivate;
//         };
//     }
// ]);
