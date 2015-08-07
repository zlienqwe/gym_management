/**
 * Created by Zlien on 8/7/15.
 */
'use strict'

angular.module('gym_management').controller('employeeController', function($scope, $http, $filter, $location){

    $http.get('api/employees').success(function (employees) {
        $scope.employees = $filter('orderBy')(employees, 'name');
    });

    $scope.createEmployee = function (employee) {


        $http.post('api/employees',
            {

                name: employee.name,
                role: employee.role,
                gender: employee.gender,
                email: employee.email,
                age: employee.age
            }).success(function () {
                $location.path('/employees');
            })
    };

});