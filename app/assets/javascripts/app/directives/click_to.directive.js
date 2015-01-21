function clickTo() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var navHeight = $("body > nav").height(),
          newOffset;

      element.click(function() {
        newOffset = $("."+attrs.dest).offset().top;
        $("html, body").animate({ scrollTop: newOffset - navHeight });
      })
    }
  };
}

angular.module('joshwcc').directive('clickTo', [clickTo]);