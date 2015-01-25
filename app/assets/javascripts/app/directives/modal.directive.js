function modal() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      element.on("click", function(e) {
        // Click outside to close
        console.log(e.target.className)
        if ( e.target.className.split(" ")[0] == 'modal' ) {
          projectOffset = $(".projects").offset().top;
          navHeight = $(".main-nav").height()
          
          scope.$apply(function() {
            scope.home.activeProject = null;
            scope.home.freezeActive  = null;
            $("html, body").animate({ scrollTop: (projectOffset - navHeight) }, 250);
          });
        }
      });
    }
  };
}

angular.module('joshwcc').directive('modal', [modal]);