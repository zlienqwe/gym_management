/**
 * Created by Zlien on 8/6/15.
 */
'use strict';

/* Controllers */

angular.module('gym_management').controller('userController', function ($scope, $http, $location, $route, $filter) {
    $http.get('api/users').success(function (users) {

        $scope.users = $filter('orderBy')(users, 'name');
    });



    var deleteUser = function (id, callback) {
        $http.delete('api/users/' + id).success(function () {
            callback();
        })
    };
    $scope.deleteUser = function (id) {
        deleteUser(id, function () {
            $route.reload();
        })

    };


    //$http.get('api/employee').success(function(employee){
    //    $scope.employee = employee;
    //});


    //$scope.addNewUser = function(){
    //    addUser()
    //}

});
