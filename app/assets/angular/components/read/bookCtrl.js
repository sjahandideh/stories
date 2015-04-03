Stories.App.controller('read/bookCtrl', ['$routeParams', '$scope', 'Restangular', function(params, scope, Restangular) {

  setCurrentUser();
  loadBook();

  scope.selectChapter = function(chapter) {
    scope.currentChapter = chapter;
  };

  scope.updateRating = function(startNumber) {
    scope.rating.value = startNumber;
    scope.rating.save();
  };

  scope.$watch('currentChapter', function(chapter) {
    loadRating(chapter.id);
  });

  // private

  function loadRating(chapterId) {
    Restangular.one('chapters', chapterId).one('rating').get()
      .then(function(rating) {
        scope.rating = rating;
      });
  };

  function setCurrentUser() {
    Restangular.one('user').get()
      .then(function(u) {
        scope.currentUser = u;
      });
  };

  function loadBook() {
    Restangular.one('books', params.id).get()
      .then(function(book) {
        scope.book = book; // book and it's chapters
        scope.currentChapter = scope.book.chapters[0];
        scope.rating = scope.currentChapter.rating || {value: 0};
      });
  };

}]);
