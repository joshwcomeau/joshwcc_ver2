function followScroll($window) {
  return {
    restrict: 'A',
    link: function(scope, element, attrs) {
      var position       = 'relative',
          initial_offset = attrs.initialOffset || element.offset().top,
          min_scroll_top = attrs.minScrollTop || 0,
          header_height  = element.height();

      $($window).on("scroll", function() {

        // See if we need to switch into fixed
        if ( shouldItBeFixed() ) {
          setWidthToParent(element);

          if ( position === 'relative' ) {
            element.addClass("fixed-from-top");
            position = 'fixed';

            // Add a spacer
            $("<div class='nav-spacer' style='height: " + header_height + "px; position: relative;'></div>").insertAfter(element)
          }
        } else if ( !shouldItBeFixed() && position === 'fixed' ) {
          element.removeClass("fixed-from-top");
          position = 'relative';
          // remove our spacer
          $(".nav-spacer").remove();
        }

      });

      
      $($window).on("resize", function() {
        if ( position === 'fixed' ) 
          setWidthToParent(element)
        else
          element.removeAttr("style");
      });

      function shouldItBeFixed() {
        return $($window).scrollTop() >= (initial_offset - min_scroll_top);
      }

      function setWidthToParent(element) {
        return element.attr("style", "width: " + element.parent().width() + "px");
      }
    }
  };
}

followScroll.$inject = ['$window'];
angular.module('joshwcc').directive('followScroll', ['$window', followScroll]);