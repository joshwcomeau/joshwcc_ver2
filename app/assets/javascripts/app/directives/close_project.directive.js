function closeProject() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      element.click(function() {
        // Remove the height.
        $("section.projects").removeAttr("style");
        scope.$apply(function() {
          scope.home.activeProject = null;  
        })
        
        
      })
    }
  };
}

angular.module('joshwcc').directive('closeProject', [closeProject]);