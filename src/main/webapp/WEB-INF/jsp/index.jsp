<!DOCTYPE html>
<html lang="en" ng-app="solarApp">
<head>
    <!-- Includes -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-animate.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-route.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.1.2/ui-bootstrap-tpls.min.js"></script>
    <script src="js/app.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>HEY</title>
</head>
<body ng-controller="indexController">
    <h1 class="container-fluid">Welcome</h1>
    <div ng-view></div>
</body>
</html>