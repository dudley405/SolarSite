<!DOCTYPE html>
<html lang="en" ng-app="solarApp">
<head>
    <!-- Includes -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Candal' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/app.css">
    <meta charset="UTF-8">
    <title>HEY</title>
</head>
<body ng-controller="indexController">
<div class="container-fluid">
    <div class="wrapper">
       <form class="form-horizontal">
                    <h2 class="tool-logo">DIY Solar Calculator</h2>
                    <div class="form-group">
                        <label for="gridSelection" class="col-sm-8 control-label pull-left"></label>
                        <div class="btn-group col-sm-4 pull-right">
                            <label class="btn btn-info" ng-model="radioModel" uib-btn-radio="'offGrid'">Off Grid</label>
                            <label class="btn btn-info" ng-model="radioModel" uib-btn-radio="'onGrid'">Grid Tied</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="kilowattUsage" class="col-sm-7 control-label pull-left">Kilowatts Used Monthly (from electric bill)</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="kilowattUsage" placeholder="Kilowatts">
                        </div>
                    </div>
                    <div ng-if="radioModel == 'onGrid'" class="form-group">
                        <label for="percentageSolar" class="col-sm-7 control-label pull-left">Percentage of electricity desired from Solar</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="percentageSolar" placeholder="%">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="zipCode" class="col-sm-7 control-label pull-left">Zip Code</label>
                        <div class="col-sm-5">
                             <input type="text" class="form-control" id="zipCode" placeholder="Zip">
                        </div>
                    </div>
                     <div class="form-group col-sm-12 text-center">
                        <button class="btn btn-info">Calculate</button>
                     </div>

        </form>

        <div ui-view></div>
    </div>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-animate.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.8/angular-ui-router.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.1.2/ui-bootstrap-tpls.min.js"></script>
    <script src="js/app.js"></script>
</body>
</html>