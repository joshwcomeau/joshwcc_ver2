function modal($window) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      element.on("click", function(e) {
        // Click outside to close
        if ( e.target.className.split(" ")[0] == 'modal' ) {
          scope.$apply(function() {
            scope.home.activeProject = null;
          });
        }
      });
    }
  };
}

modal.$inject = ['$window'];
angular.module('joshwcc').directive('modal', ['$window', modal]);