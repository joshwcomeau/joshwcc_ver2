function HomeController($scope, $attrs) {
  var home = this;
  this.projects = gon.projects;
}


HomeController.$inject = ['$scope', '$attrs'];
angular.module('joshwcc').controller('HomeController', ['$scope', '$attrs', HomeController]);