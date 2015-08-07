'use strict';

angular.module('gym_management', [
        'ngRoute'
    ])
    .config(function($routeProvider) {

        $routeProvider
            .when('/users', {
                templateUrl: 'views/users.html',
                controller: 'userController'
            })
            .when('/employees', {
                templateUrl: 'views/employees.html',
                controller: 'employeeController'
            })
            .when('/employees/creation', {
                templateUrl: 'views/createEmployee.html',
                controller: 'employeeController'
            })
            .otherwise( {
                redirectTo:"/"
            });
    });