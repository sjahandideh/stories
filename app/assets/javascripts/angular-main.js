/*** Main module of the angular app ***/
window.Stories = {
  App: angular.module('Stories.App', ['ngRoute', 'restangular', 'ngSanitize'])
                .config(function(RestangularProvider) {
                    RestangularProvider.setBaseUrl('/api/v1/');
                })
};
