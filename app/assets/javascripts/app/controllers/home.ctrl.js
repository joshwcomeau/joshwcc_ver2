function HomeController($scope, $attrs) {
  var home = this;
  this.tagline = "Boo!";
}


HomeController.$inject = ['$scope', '$attrs'];
angular.module('joshwcc').controller('HomeController', ['$scope', '$attrs', HomeController]);