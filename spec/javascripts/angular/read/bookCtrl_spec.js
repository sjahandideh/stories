//= require 'read/bookCtrl'

describe("read/bookCtrl", function() {
  var http, scope, controller;
  var book = {
    'id': 2,
    'title': 'Sample book 2',
    'icon_name': 'sample2.jpg' ,
    'description': 'this is a sample book.',
    'chapters': [
      { 'title': 'chapter one', 'content': 'this is chapter one' },
      { 'title': 'chapter two', 'content': 'this is chapter two' }
    ]
  };

  beforeEach(module('Stories.App'));
  beforeEach(inject(function ($httpBackend, $controller, $rootScope) {
    scope = $rootScope.$new();
    controller = $controller('read/bookCtrl', {
      $scope: scope,
      $routeParams: {id: 2}
    });

    http = $httpBackend;
    http.when("GET", "/api/v1/books/2").respond(book);
    http.flush();

  }));

  context("initialization", function() {
    it("loads the selected book", function() {
      expect(scope.book.id).to.eql(2);
      expect(scope.book.title).to.eql(book.title);
    });

    it("loads the chapters of the book", function() {
      expect(scope.book.chapters.length).to.eql(2);
    });

    it("sets currentChapter as the first one", function() {
      expect(scope.currentChapter.title).eql('chapter one');
      expect(scope.currentChapter.content).eql('this is chapter one');
    });

  });

  describe("#selectChapter", function() {

    it("change currentChapter", function() {
      scope.selectChapter(book.chapters[1]);

      expect(scope.currentChapter.title).eql('chapter two');
      expect(scope.currentChapter.content).eql('this is chapter two');
    });

  });

  describe("#updateRating", function() {

    it("set rating to 1", function() {
      scope.updateRating(1);

      expect(scope.rating).eql(1);
    });

    it("set rating to 5", function() {
      scope.updateRating(5);

      expect(scope.rating).eql(5);
    });

    it("set rating to 5 at most", function() {
      scope.updateRating(6);

      expect(scope.rating).eql(6);
    });

  });

});
