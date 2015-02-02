function NewBlogController($scope, $attrs) {
  $scope.$watch(angular.bind(this, function () {
    return this.newImage
  }), function(newVal, oldVal) {
    if ( newVal ) {
      console.log(newVal, oldVal);
    }
  });

}


NewBlogController.$inject = ['$scope', '$attrs'];
angular.module('joshwcc').controller('NewBlogController', ['$scope', '$attrs', NewBlogController]);