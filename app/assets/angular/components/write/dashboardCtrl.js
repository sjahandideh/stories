Stories.App.controller('write/dashboardCtrl', ['$scope', 'Restangular', function(scope, Restangular) {

  Restangular.all('my_books').getList()
    .then(function(books) {
      scope.books = books;
    });

}]);
