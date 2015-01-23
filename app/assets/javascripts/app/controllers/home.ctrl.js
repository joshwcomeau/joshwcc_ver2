function HomeController($scope, $attrs, $sce) {
  var home = this;
  this.projects = gon.projects;

  // Replace me with RSS feed when I don't want to curate the results so badly.
  this.blogPosts = [
  {
    img:    'https://s3.amazonaws.com/joshwcc/blog_letsplaymean.jpg',
    title:  'Let\'s Play MEAN',
    desc:   'A multi-part look at the MEAN stack, from initial setup to deployment.',
    date:   'Dec 29th 2014',
    link:   'https://medium.com/@joshuawcomeau/feelin-mean-8bd942df37d3'
  }, {
    img:    'https://s3.amazonaws.com/joshwcc/blog_buildingpromises.jpg',
    title:  'Building Promises',
    desc:   'Exploring how to convert legacy javascript callbacks into swanky new promises.',
    date:   'Dec 10th 2014',
    link:   'https://medium.com/@joshuawcomeau/building-promises-73deb49a6f9'
  }, {
    img:    'https://s3.amazonaws.com/joshwcc/blog_firstgig.jpg',
    title:  'My First Developer Gig',
    desc:   'Some ruminations on my first full-time job as a junior back-end developer.',
    date:   'Nov 10th 2014',
    link:   'https://medium.com/@joshuawcomeau/my-first-developer-gig-1c2b6bce3f6d?recommendNoteId=d7ee9e9f89f3'
  }, {
    img:    'https://s3.amazonaws.com/joshwcc/blog_hungrybelly.jpg',
    title:  'Introducing HungryBelly',
    desc:   'A recap of my experiences, building the winning AngelHackTO app, HungryBelly',
    date:   'Jun 29th 2014',
    link:   'https://medium.com/bitmaker-labs/selfish-design-6eca3f247a91'
  }];

  this.parseAsHTML = function(string) {
    return $sce.trustAsHtml(string);
  }


}


HomeController.$inject = ['$scope', '$attrs', '$sce'];
angular.module('joshwcc').controller('HomeController', ['$scope', '$attrs', '$sce', HomeController]);