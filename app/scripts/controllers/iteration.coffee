
  meetup =  angular.module('meetup', []);
  
  ControllerA = ($scope) ->
    $scope.items = [
      id:1
      name:"Sim Redmond Band", 
      id:2
      name:"John Browns Body", 
      id:3
      name:"Ayurveda",
      id:4
      name:"The Horse Flies"
    ];
    $scope.sort = 'id'
    $scope.reverse = false