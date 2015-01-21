function viewProject() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight = $("body > nav").height(),
          projectOffset = $(".projects").offset().top;

      element.click(function() {
        scope.$apply(function() {
          scope.home.activeProject = attrs.project
        });
        // Scroll to the top of projects
        $("html, body").scrollTop(projectOffset - navHeight - 3);

        // show our modal

      })
    }
  };
}

angular.module('joshwcc').directive('viewProject', [viewProject]);