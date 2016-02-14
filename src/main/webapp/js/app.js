var app = angular.module('solarApp', ['ui.bootstrap', 'ngAnimate', 'ui.router']);

app.config(function($stateProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise("/");

  $stateProvider
    .state('main', {
      url: "/results",
      templateUrl: "/tool"
    });
});

  app.controller('indexController', ['$scope', 'locationService', function($scope, locationService) {
    $scope.radioModel = 'offGrid';

    $scope.calculate = function() {

       // Get amount of sunlight for users location
        locationService.getLocation($scope.zipCode)
                         .success(function (data) {
                                         $scope.address = data.results[0].formatted_address;
                                         $scope.lat = data.results[0].geometry.location['lat'];
                                         $scope.lng = data.results[0].geometry.location['lng'];

                                         $scope.zone = locationService.getZone($scope.lat, $scope.lng);
                                     })
                                     .error(function (error) {
                                         $scope.request = 'Unable to retrieve location at this time ' + error.message;
                                     });

        if($scope.radioModel == 'offGrid'){
          $scope.percentage = '100';
        }

        $scope.clicked = 'true';
    };
  }]);
