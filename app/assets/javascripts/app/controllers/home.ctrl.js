function HomeController($scope, $attrs, $sce) {
  var home = this;
  this.projects = gon.projects;

  // Replace me with RSS feed when I don't want to curate the results so badly.
  this.blogPosts = [

  {
    img:    'https://s3.amazonaws.com/joshwcc/blog_efficientreact.jpg',
    title:  'Efficient React Components',
    desc:   'Some vital lessons learned about performance, building a word game in React.js with Flux architecture.',
    date:   'Mar 20th 2015',
    link:   'https://medium.com/@joshuawcomeau/efficient-nested-react-components-dd9347e9b3f3'
  }, {
    img:    'https://s3.amazonaws.com/joshwcc/blog_cat.jpg',
    title:  'Search-by-Colour',
    desc:   'Building an algorithm that sees colour as we do. A look at how I built ColourMatch.',
    date:   'Jan 28th 2015',
    link:   'https://medium.com/@joshuawcomeau/search-by-colour-cb1ba49aa9aa'
  }, {
    img:    'https://s3.amazonaws.com/joshwcc/blog_letsplaymean.jpg',
    title:  'Let\'s Play MEAN',
    desc:   'A multi-part look at the MEAN stack, from initial setup to deployment.',
    date:   'Dec 6th 2014 - Jan 28th 2015',
    link:   'https://medium.com/@joshuawcomeau/feelin-mean-8bd942df37d3'
  }, {
    img:    'https://s3.amazonaws.com/joshwcc/blog_buildingpromises.jpg',
    title:  'Building Promises',
    desc:   'Exploring how to convert legacy javascript callbacks into swanky new promises.',
    date:   'Dec 10th 2014',
    link:   'https://medium.com/@joshuawcomeau/building-promises-73deb49a6f9'
  }];

  // {
  //   img:    'https://s3.amazonaws.com/joshwcc/blog_firstgig.jpg',
  //   title:  'My First Developer Gig',
  //   desc:   'Some ruminations on my first full-time job as a junior back-end developer.',
  //   date:   'Nov 10th 2014',
  //   link:   'https://medium.com/@joshuawcomeau/my-first-developer-gig-1c2b6bce3f6d?recommendNoteId=d7ee9e9f89f3'
  // }

  this.parseAsHTML = function(string) {
    return $sce.trustAsHtml(string);
  };

  this.findProject = function(project_id) {
    return $.grep(home.projects, function(p) { 
      return p.id == project_id;
    });
  };

  window.onpopstate = function(event) {
    // Either we want to close the open activeProject, or re-open the last one.
    if ( home.activeProject )
      $scope.$apply(function() { home.activeProject = null; });
    else
      $scope.$apply(function() { home.activeProject = event.state.project; });
  };


}


HomeController.$inject = ['$scope', '$attrs', '$sce'];
angular.module('joshwcc').controller('HomeController', ['$scope', '$attrs', '$sce', HomeController]);