function Project($resource) {
  return $resource('/projects/:id.js');
}

Project.$inject = ['$resource'];
angular.module('joshwcc').factory("Project", ["$resource", Project]);