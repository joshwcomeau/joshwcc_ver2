function viewProject(Project) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight = $(".main-nav").height(),
          projectOffset = $(".projects").offset().top;

      element.click(function() {
        // Scroll to the top of projects
        $("html, body").animate({ scrollTop: (projectOffset - navHeight) }, 250);

        // Set the project height equal to the child height.
        setTimeout(function() {
          console.log($(".active-project").height())
        $("section.projects").height( $(".active-project").height() + 20 );
        }, 250);
        
      })
    }
  };
}

viewProject.$inject = ['Project'];
angular.module('joshwcc').directive('viewProject', ['Project', viewProject]);