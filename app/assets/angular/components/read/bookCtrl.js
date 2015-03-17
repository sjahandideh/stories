Stories.App.controller('read/bookCtrl', ['$routeParams', '$scope', 'Restangular', function(params, scope, Restangular) {

  Restangular.one('books', params.id).get()
    .then(function(book) {
      scope.book = book; // book and it's chapters
      scope.currentChapter = scope.book.chapters[0];
    });

  scope.selectChapter = function(chapter) {
    scope.currentChapter = chapter;
  };

}]);
