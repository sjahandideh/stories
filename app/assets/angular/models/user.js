Stories.App.factory('User', function(Restangular) {

  var User = {};

  User.current = function() {
    return Restangular.service('user').one().get();
  };

  return User;

});
