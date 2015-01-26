function lightenBg() {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      element.on("mouseenter", function() {
        console.log("targeting ", attrs.bg)
        $(attrs.bg).addClass("bg-green t-vslow");
      })
      .on("mouseleave", function() {
        $(attrs.bg).removeClass("bg-green");
      });
    }
  };
}

angular.module('joshwcc').directive('lightenBg', [lightenBg]);