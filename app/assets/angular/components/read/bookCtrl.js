Stories.App.controller('read/bookCtrl', ['$routeParams', '$scope', 'Restangular', function(params, scope, Restangular) {


  console.log('params: ', params);
  scope.id = params.id;
}]);
