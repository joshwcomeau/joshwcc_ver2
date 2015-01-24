function viewProject() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight,
          project,
          projectOffset;

      element.click(function() {
        projectOffset = $(".projects").offset().top;
        navHeight = $(".main-nav").height()
        
        // Scroll to the top of projects
        $("html, body").animate({ scrollTop: (projectOffset - navHeight) }, 250);

        // Get our new active project data
        scope.$apply(function() {
          project = scope.home.findProject(attrs.project)[0];
          scope.home.activeProject = project;
          history.pushState({project: project}, "project");       
        });  
      });
    }
  };
}

angular.module('joshwcc').directive('viewProject', [viewProject]);