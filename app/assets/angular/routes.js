/*** Routes ***/
Stories.App.config(['$routeProvider', '$locationProvider', function(routeProvider, locationProvider) {
  locationProvider.html5Mode({enabled:true, requireBase: false});

  routeProvider
    .when("/books/:id", {
      templateUrl: '/assets/read/book.html',
      controller: 'read/bookCtrl'
    })
    .when("/read", {
      templateUrl: '/assets/read/dashboard.html',
      controller: 'read/dashboardCtrl'
    })
    .when("/write", {
      templateUrl: '/assets/write/dashboard.html',
      controller: 'write/dashboardCtrl'
    })
    .otherwise({
      templateUrl: '/assets/home/home.html',
      controller: 'homeCtrl'
    });
}]);
