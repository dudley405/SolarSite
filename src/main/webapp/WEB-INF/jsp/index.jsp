<!DOCTYPE html>
<html lang="en" ng-app="solarApp">
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Includes -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
      <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="css/app.css">
      <meta charset="UTF-8">
      <title>Solar Calculator</title>
   </head>
   <body ng-controller="indexController">
      <div class="container-fluid">
         <div class="wrapper">
            <form class="form-horizontal">
               <h2 class="tool-logo row">Solar Calculator</h2>
               <div class="form-group">
                  <label for="gridRadio" class="col-sm-5 control-label">Sytem Type</label>
                  <div class="btn-group pull-right col-sm-6" id="gridRadio">
                     <label class="btn btn-primary" ng-model="radioModel" uib-btn-radio="'offGrid'">Off Grid</label>
                     <label class="btn btn-primary" ng-model="radioModel" uib-btn-radio="'onGrid'">Grid Tied</label>
                  </div>
               </div>
               <div class="form-group has-feedback">
                  <label for="kilowattUsage" class="col-sm-5 control-label pull-left">Kilowatts Used Monthly</label>
                  <div class="col-sm-7">
                     <input type="text" class="form-control" ng-model="kilowatts" id="kilowattUsage" placeholder="Kilowatts">
                  </div>
               </div>
               <div ng-hide="radioModel == 'offGrid'" class="form-group">
                  <label for="percentageSolar" class="col-sm-5 control-label pull-left"> Desired Offset Percentage</label>
                  <div class="col-sm-7">
                     <input type="text" class="form-control" ng-model="percentage" id="percentageSolar" placeholder="%">
                  </div>
               </div>
               <div class="form-group">
                  <label for="zipCode" class="col-sm-5 control-label pull-left">Zip Code</label>
                  <div class="col-sm-7">
                     <input type="text" class="form-control" ng-model="zipCode" id="zipCode" placeholder="Zip">
                  </div>
               </div>
               <div class="row text-center">
                  <button class="btn btn-info" ng-click="calculate()">
                  <span class="glyphicon glyphicon-refresh spinning" ng-if="clicked == 'true'"></span> Calculate</button>
               </div>
            </form>
            <div class="row" ng-if="clicked == 'true'">
               {{radioModel}}
               {{kilowatts}}
               {{percentage}}
               {{zipCode}}
               {{address}}
               {{lat}}
               {{lng}}
               {{zone}}
            </div>
         </div>
      </div>
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBTnFHiN73ieGxnZXO-6xn83MGvAMK8zjw&libraries=geometry"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-animate.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.8/angular-ui-router.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.1.2/ui-bootstrap-tpls.min.js"></script>
      <script src="js/app.js"></script>
      <script src="js/service.js"></script>
   </body>
</html>