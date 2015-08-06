/**
 * Created by Zlien on 8/6/15.
 */
'use strict';

/* Controllers */

angular.module('gym_management').controller('userController', function ($scope, $http, $location, $route, $filter) {
    $http.get('api/users').success(function(users){

        console.log(typeof (users));
        $scope.users = $filter('orderBy')(users, 'name');
    });

});
