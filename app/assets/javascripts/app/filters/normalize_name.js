angular.module('joshwcc').
  filter('normalizeName', function() {
    return function(string) {
      if (string) {
        // remove any non-alphanumeric characters
        return string.replace(/[^\w]/gi, '')
      }
    };
  }
);