  meetup =  angular.module('meetup', []);
  
  ControllerA = ($scope) ->
    $scope.counter = 0;
    $scope.btnClass = 'btn';
    $scope.push ->
      $scope.btnClass = ($scope.btnClass == 'btn') ? 'btn btn-danger' : 'btn';
      $scope.counter += 1;
  
  ControllerB = ($scope) ->
    $scope.counter = 0;
    $scope.active = false;
    $scope.push ->
      $scope.active = !$scope.active;
      $scope.counter += 1;
