<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="mainCtrl">
<h1>Login</h1>
<label>Username</label><input ng-model="data.username"/>
<label>Password</label><input type="password" ng-model="data.password"/>
<a href="#" ng-click="login()">Login</a>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-resource.min.js">
</script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-route.min.js">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.9/ngStorage.min.js"></script>
<script src="http://localhost:8080/Cliente/js/oauth-ng.js"></script>
<script src="http://localhost:8080/Cliente/js/login.js"></script>
</body>
</body>
</html>