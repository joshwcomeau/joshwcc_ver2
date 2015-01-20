function navHighlight($window) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight     = $("body > nav").height(),
          foundActive   = false,
          windowTop;

      $($window).on("scroll", function() {
        foundActive = false;
        windowTop   = $(window).scrollTop();
        sections    = createSectionArray(attrs.sections),
          

        _.forEachRight(sections, function(section) {
          if ( windowTop >= section.height && !foundActive ) {
            // We've found our active section!
            foundActive = true;
            console.log("Active section is ", section, " because window scrolltop is ", windowTop);
            scope.$apply(function() {
              scope.home.activeSection = section.name;
            });
            return true;
          }
        });

        // If we're still here, there is no active section. Set it to null.
        if (!foundActive) {
          console.log("No active =(")

          scope.$apply(function() {
            scope.home.activeSection = null;
          });
          return true;
        }

        console.log(scope.home);
      });



      
      $($window).on("resize", function() {

      });

      function createSectionArray(sections) {
        return _.map(sections.split(","), function(section) {
          return { 
            name:   section, 
            height: $("."+section).offset().top - navHeight
          }
        });
      }

    }
  };
}

navHighlight.$inject = ['$window'];
angular.module('joshwcc').directive('navHighlight', ['$window', navHighlight]);

$(document).ready(function() {

  $(window).scroll(function(e) {
    windowTop = $(window).scrollTop()
    console.log();

    // When the window scrolltop hits the section's top (minus the header height), we want the section to activate.
  });


});