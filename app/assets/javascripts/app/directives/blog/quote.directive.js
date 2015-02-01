function quote() {
  return {
    restrict:   'E',
    transclude: true,
    scope:      { classString: '=class' },
    template:   '<blockquote class="small {{classString}}">' +
                  '<ng-transclude></ng-transclude>' +
                '</blockquote>'
  };
}

angular.module('joshwcc').directive('quote', [quote]);