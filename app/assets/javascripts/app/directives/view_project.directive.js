function viewProject(Project) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight,
          projectOffset;

      element.click(function() {
        projectOffset = $(".projects").offset().top;
        navHeight = $(".main-nav").height()
        // Scroll to the top of projects

        $("html, body").animate({ scrollTop: (projectOffset - navHeight) }, 250);

        // Set the project height equal to the child height.
        setTimeout(function() {
          console.log($(".active-project").height())
        $("section.projects").height( $(".active-project").height() );
        }, 250);
        
      })
    }
  };
}

viewProject.$inject = ['Project'];
angular.module('joshwcc').directive('viewProject', ['Project', viewProject]);