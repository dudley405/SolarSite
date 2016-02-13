var app = angular.module('solarApp', ['ui.bootstrap', 'ngAnimate', 'ui.router']);

app.config(function($stateProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise("/");

  $stateProvider
    .state('main', {
      url: "/results",
      templateUrl: "/tool"
    });
});

  app.controller('indexController', ['$scope', function($scope) {
    $scope.radioModel = 'offGrid';
    $scope.greeting = "HEYOOOO";
  }]);
