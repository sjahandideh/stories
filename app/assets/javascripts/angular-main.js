/*** Main module of the angular app ***/
window.Stories = {
  App: angular.module('Stories.App', ['ngRoute', 'restangular'])
                .config(function(RestangularProvider) {
                    RestangularProvider.setBaseUrl('/');
                })
};
