'use strict'

directives = angular.module('directives', []);

directives.directive('bandpicker', ->
      restrict: 'E'
      scope: band: '=value', label: '@'
      replace: true
      template: '<div class="bandpicker">'+
                  '{{label}}:'+
                  '<select ng-model="band" ng-options="item.id as item.name for item in items">'+
                    '<option value="">---Choose a band---</option>'+
                  '</select>'+
                '</div>'
      link:(scope, element, attrs) ->
        scope.items = [
            {id:1,
            name:"Sim Redmond Band"}, 
            {id:2,
            name:"John Browns Body"}, 
            {id:3,
            name:"Ayurveda"},
            {id:4,
            name:"The Horse Flies"}]

define ->
  angular.module('directives').controller 'directiveA', 
  ($scope) ->
      $scope.band_id = null

define ->
  angular.module('directives').controller 'directiveB', 
  ($scope) ->
      $scope.band_id = 3)