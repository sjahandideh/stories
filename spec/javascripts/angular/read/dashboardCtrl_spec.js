//= require 'read/dashboardCtrl'

describe("read/dashboardCtrl", function() {
  var http, scope, controller;
  var books = [
    { 'id': 1, 'title': 'Sample book 1', 'icon_name': 'sample1.jpg' , 'description': 'this is a sample book.' },
    { 'id': 2, 'title': 'Sample book 2', 'icon_name': 'sample2.jpg' , 'description': 'this is a sample book.' }
  ];

  beforeEach(module('Stories.App'));
  beforeEach(inject(function ($httpBackend, $controller, $rootScope) {
    scope = $rootScope.$new();
    controller = $controller('read/dashboardCtrl', {
      $scope: scope
    });

    http = $httpBackend;
    http.when("GET", "/books").respond(books);
    http.flush();

  }));

  it("loads the list of books", function() {
    expect(scope.books.length).to.eql(2);
  });

});
