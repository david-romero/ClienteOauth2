<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="mainCtrl">
<oauth
  site="http://localhost:8080/Servidor"
  client-id="sampleClientId"
  redirect-uri="http://localhost:8080/Cliente/inicio"
  scope="read"
  template="oauthTemplate">
</oauth>
<div>
<h1>Foo Details</h1>
<label >ID</label><span>{{foo.id}}</span>
<label>Name</label><span>{{foo.name}}</span>
</div>
<a href="#" ng-click="getFoo()">New Foo</a>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-resource.min.js">
</script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-route.min.js">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.9/ngStorage.min.js"></script>
<script src="http://localhost:8080/Cliente/js/oauth-ng.js"></script> 
<script src="http://localhost:8080/Cliente/js/app.js"></script>
</body>
</html>