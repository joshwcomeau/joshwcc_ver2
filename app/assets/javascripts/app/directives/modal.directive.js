function modal() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      element.on("click", function(e) {
        // Click outside to close
        console.log(e.target.className)
        if ( e.target.className.split(" ")[0] == 'modal' ) {
          scope.$apply(function() {
            scope.home.activeProject = null;
            scope.home.freezeActive  = null;
            // $("section.projects").removeAttr("style");
          });
        }
      });
    }
  };
}

angular.module('joshwcc').directive('modal', [modal]);