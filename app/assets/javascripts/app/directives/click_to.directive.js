function clickTo($timeout) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight = $(".main-nav").height(),
          newOffset;

      element.click(function() {
        newOffset = $("."+attrs.dest).offset().top;
        $("html, body").animate({ scrollTop: newOffset - navHeight }, 500);

        // Add a temporary animation to the clicked element, after removing it from others
        $(".main-nav-li").removeClass("clicked");
        element.addClass("clicked");

        scope.$apply(function() {
          scope.home.activeSection = attrs.dest;  
          // We need to remove the ability for scrolling to trigger this effect.
          scope.home.freezeActive = true;
          
          $timeout(function() {
            scope.home.freezeActive = false;
          }, 1200);
        })
        


      })
    }
  };
}

angular.module('joshwcc').directive('clickTo', ['$timeout', clickTo]);