'use strict';

angular.module('gym_management', [
        'ngRoute'
    ])
    .config(function($routeProvider) {

        $routeProvider
            .when('/users', {
                templateUrl: 'views/users.html',
                controller: 'userController'
            });
    });