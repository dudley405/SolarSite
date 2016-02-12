var app = angular.module('solarApp', ['ui.bootstrap', 'ngAnimate', 'ngRoute']);

app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'html/partials/_index.html',
        controller: 'indexController'
      }).
      otherwise({
        redirectTo: '/'
      });
  }]);

  app.controller('indexController', ['$scope', function($scope) {
    $scope.greeting = 'Hola!';
  }]);