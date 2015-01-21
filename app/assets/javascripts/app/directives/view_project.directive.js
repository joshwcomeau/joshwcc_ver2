function viewProject(Project) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight = $("body > nav").height(),
          projectOffset = $(".projects").offset().top,
          newContents;

      element.click(function() {
        // show our modal
        scope.$apply(function() {
          scope.home.activeProject = attrs.project;
        });
        
        // Scroll to the top of projects
        $("html, body").scrollTop(projectOffset - navHeight);

        // Fetch our content from the server
        Project.get({projectName: 'thingo'}, function(success) {
          // success
          console.log(success);
        }, function(error) {
          // error
          console.log(error);
        });
      })
    }
  };
}

viewProject.$inject = ['Project'];
angular.module('joshwcc').directive('viewProject', ['Project', viewProject]);