function closeProject() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      element.click(function() {
        scope.$apply(function() {
          scope.home.activeProject = null;  
          scope.home.freezeActive = null;
        });
      })
    }
  };
}

angular.module('joshwcc').directive('closeProject', [closeProject]);