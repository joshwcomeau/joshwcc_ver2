function Project($resource) {
  return $resource('/projects/:projectName');
}

Project.$inject = ['$resource'];
angular.module('joshwcc').factory("Project", ["$resource", Project]);