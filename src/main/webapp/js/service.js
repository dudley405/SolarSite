var app = angular.module('solarApp');

app.service('locationService', ['$http', function ($http) {

        var urlBase = 'https://maps.googleapis.com/maps/api/geocode/json?address=';
        var urlSuffix = '&key=AIzaSyBTnFHiN73ieGxnZXO-6xn83MGvAMK8zjw';

        var zone1Coords = [
                        {lat: 35.88905, lng: -106.17187},
                        {lat: 36.10237, lng: -93.60351},
                        {lat: 28.07764, lng: -92.9879},
                        {lat: 28.76765, lng: -106.43554},
                        {lat: 35.88905, lng: -106.17187}
                      ];

        var polyOptions = {
             path: zone1Coords,
             strokeColor: "#FF0000",
             strokeOpacity: 0.8,
             strokeWeight: 2,
             fillColor: "#0000FF",
             fillOpacity: 0.6 };

        var zone1Polygon = new google.maps.Polygon(polyOptions);

        this.getLocation = function (zip) {
            return $http.get(urlBase + zip + urlSuffix);
        };

        this.getZone = function (latitude, longitude) {
            var latLng = new google.maps.LatLng({lat: latitude, lng: longitude});
            return google.maps.geometry.poly.containsLocation(latLng, zone1Polygon)
        }

    }]);