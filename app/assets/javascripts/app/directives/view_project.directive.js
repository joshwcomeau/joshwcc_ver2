function viewProject(Project) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight = $(".main-nav").height(),
          projectOffset = $(".projects").offset().top;

      element.click(function() {
        // Scroll to the top of projects
        $("html, body").animate({ scrollTop: (projectOffset - navHeight) }, 250);
      })
    }
  };
}

viewProject.$inject = ['Project'];
angular.module('joshwcc').directive('viewProject', ['Project', viewProject]);