function HomeController($scope, $attrs, $sce) {
  var home = this;
  this.projects = gon.projects;

  this.parseAsHTML = function(string) {
    return $sce.trustAsHtml(string);
  }
}


HomeController.$inject = ['$scope', '$attrs', '$sce'];
angular.module('joshwcc').controller('HomeController', ['$scope', '$attrs', '$sce', HomeController]);