'use strict'

define ['controllers/base'], ->
  angular.module('controllers').controller 'scopeA', ($rootScope,$scope) ->
      console.log('scopes')
      $scope.pushed = false
      $rootScope.pushed = true

define ['controllers/base'], ->
  angular.module('controllers').controller 'scopeB', ($rootScope,$scope) ->
    $scope.pushed = true;
    $scope.push ->
      $rootScope.pushed = !$rootScope.pushed;
      $scope.$parent.pushed = !$scope.$parent.pushed;
      $scope.pushed = !$scope.pushed;


define ['controllers/base'], ->
  angular.module('controllers').controller 'scopeC', ($rootScope,$scope) ->
    $scope.pushed = false;
    $scope.push ->
      $rootScope.pushed = !$rootScope.pushed;
      $scope.$parent.pushed = !$scope.$parent.pushed;
      $scope.pushed = !$scope.pushed;