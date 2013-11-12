'use strict'
define ['app','controllers/scopes'], ->

  angular.module('sevless').config ($routeProvider) ->
    $routeProvider
       .when '/', 
        templateUrl: 'index.html'
       .when '/scopes',
       	templateUrl: 'views/scopes.html'
       .when '/jquery',
       	templateUrl: 'views/jquery.html'
       .when '/filters',
       	templateUrl: 'views/filters.html'
       .when '/iteration',
       	templateUrl: 'views/iteration.html'
        .when '/directives',
        templateUrl: 'views/direcives.html'
       .otherwise
        redirectTo: '/'