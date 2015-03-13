Stories.App.controller('read/dashboardCtrl', ['$scope', 'Restangular', function(scope, Restangular) {

  Restangular.all('books').getList()
    .then(function(books) {
      scope.books = books;
    });

}]);
