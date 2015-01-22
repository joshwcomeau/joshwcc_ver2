function clickTo() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight = $("body > nav").height(),
          newOffset;

      element.click(function() {
        newOffset = $("."+attrs.dest).offset().top;
        $("html, body").animate({ scrollTop: newOffset - navHeight });

        // Add a temporary animation to the clicked element, after removing it from others
        $(".main-nav-li").removeClass("clicked").removeClass("active");
        element.addClass("clicked");


      })
    }
  };
}

angular.module('joshwcc').directive('clickTo', [clickTo]);