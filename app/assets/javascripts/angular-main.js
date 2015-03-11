/*** Main module of the angular app ***/
window.Stories = {
  App: angular.module('Stories.App', ['ngRoute'])
};

/*** Routes ***/
Stories.App.config(['$routeProvider', '$locationProvider', function(routeProvider, locationProvider) {
  locationProvider.html5Mode({enabled:true, requireBase: false});

  routeProvider
    .when("/about", {
      templateUrl: '/assets/about.html',
      controller: 'AboutCtrl'
    })
    .otherwise({
      templateUrl: '/assets/home.html',
      controller: 'HomeCtrl'
    });
}]);
