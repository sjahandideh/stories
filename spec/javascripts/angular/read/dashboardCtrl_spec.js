//= require 'read/dashboardCtrl'

describe("read/dashboardCtrl", function() {
  var scope, controller;

  beforeEach(module('Stories.App'));
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    controller = $controller('read/dashboardCtrl', {
      $scope: scope
    });
  }));

  it("will change the world", function() {
    expect(scope.message).to.eql("reading dashboard");
  });

});
