function navHighlight($window) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight     = $(".main-nav").height(),
          sections, windowTop, activeSection;

      $($window).on("scroll resize", function() {
        if ( !scope.home.freezeActive && !scope.home.activeProject ) 
          _.debounce(setActive, 250)();
      });


      function findActive() {
        windowTop   = $(window).scrollTop();
        sections    = createSectionArray(attrs.sections);

        return _.find(sections, function(section) {
          if ( windowTop >= section.offset ) {
            // We've found our active section!
            return section.name;
          }
        });
      }

      function setActive() {
        activeSection = findActive() || {name: null};
        
        scope.$apply(function() {
          scope.home.activeSection = activeSection.name;
        });
      }

      function createSectionArray(sections) {
        return _.map(sections.split(",").reverse(), function(section) {
          return { 
            name:   section, 
            offset: $("."+section).offset().top - navHeight - 16
          }
        });
      }      

    }
  };
}

navHighlight.$inject = ['$window'];
angular.module('joshwcc').directive('navHighlight', ['$window', navHighlight]);