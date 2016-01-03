BlogPost.destroy_all
Project.destroy_all
User.destroy_all

ActiveRecord::Base.connection.tables.each { |t| ActiveRecord::Base.connection.reset_pk_sequence!(t) }

@josh = User.create({
  email: 'joshwcomeau@gmail.com',
  password: '123'
})
@josh.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/josh_square_face.png')


projects = []

paid = Project.new({
  display_name: "#paid",
  thumb_path: "https://s3.amazonaws.com/joshwcc/paid_thumb.png",
  colour: "#222222",
  stack: "Rails, PostgreSQL, Angular.js, Firebase",
  demo_link: "http://www.hashtagpaid.com",
  github_link: nil,
  project_type: "Full-time Employment",
  project_length: "6 months",
  integration: "Twitter, Instagram, Firebase, Stripe",
  overview: '<p>#paid is an influencer marketing platform that lets brands connect and collaborate with social media influencers for sponsored posts. I was hired as lead back-end developer to build the platform from scratch.</p>
  <p>The platform features a bid-based campaign marketplace, a workroom with real-time chat & file transfer, a payment escrow system with Stripe, and detailed social media analytics for the sponsored post.</p>
  <p>#paid has been featured on TechCrunch and BetaList, and has been used by brands like American Express, Roots, Microsoft, Danier, Toms and Clean & Clear.</p>' ,
  technical_challenges: "#paid became a massive project, with over 30 models, deep third-party integration, and a complex stack. Trying to build a stable, scalable platform with so many parts was a massive challenge. I realized a couple months in that we were accruing a lot of technical debt, and we started practicing test-driven-development, which greatly increased our confidence in the stability of the platform."
})

paid.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_paid.jpg', placement: 0)
projects << paid


hb = Project.new({
  display_name:"HungryBelly",
  thumb_path: "https://s3.amazonaws.com/joshwcc/hungrybelly_thumb.png",
  colour: "#3498db",
  stack: "Rails, jQuery",
  demo_link: "http://www.hungrybelly.me",
  github_link: "https://github.com/joshwcomeau/HungryBelly",
  project_type: "Hackathon",
  project_length: "24 hours",
  integration: "Ordr.in API",
  overview: "<p>Built in 24 hours for the 2014 AngelHackTO hackathon, HungryBelly was a mystery food-delivery service designed to cure decision-paralysis. It won 1st place, and my team and I were flown to San Francisco to pitch at AngelHack's Global Demo Day.</p>
  <p>HungryBelly is an alternative to the food aggregators like Just-Eat that overwhelm with too many options. Enter your budget, number of servings, and optionally the cuisine you feel like. The Rails back-end finds local restaurants with the ordr.in API, builds a randomized meal set within your budget, and places the order, all behind the scenes; the user doesn't know what they've ordered until it shows up at their door.",
  technical_challenges: "The biggest challenge was the lack of time; aside from a couple power naps, we worked through the 24 hour window and finished literally in the final minutes."
})

hb.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_hungrybelly.png', placement: 0)
projects << hb


cmatch = Project.new({
  display_name: "ColourMatch",
  thumb_path: "https://s3.amazonaws.com/joshwcc/colourmatch_thumb.png",
  colour: "#1e1e20",
  stack: "Rails, PostgreSQL, Angular.js",
  demo_link: "http://colourmatch.ca",
  github_link: "https://github.com/joshwcomeau/ColourMatch",
  project_type: "Open-source tool",
  project_length: "2 weeks",
  integration: "500px API",
  overview: "<p>ColourMatch is a search-by-colour tool that helps you find stock photography based on your colour palette.</p>
  <p>Built from scratch with ImageMagick, a linux image processing tool, I experimented with many statistical and mathematical methods to extract the ideal set of colours from an image. In the end, by combining the most common colours with hue/saturation/brightness outliers, I was able to accurately represent most images in a 4-6 colour palette.</p><p>Images sourced from 500px.</p>",
  technical_challenges: "Similar search-by-colour tools take a purely statistical approach: If you select a specific red, it looks for photos where that colour takes up 90% of the image. I was more interested in finding photos where that red <em>stands out</em> to humans, like the red eyes of an albino cat. The bulk of my energy was spent on trying to solve this problem."
})

cmatch.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_colourmatch.jpg', placement: 0)
projects << cmatch

clyw = Project.new({
  display_name: "CLYWmparison",
  thumb_path: "https://s3.amazonaws.com/joshwcc/clywmparison_thumb.png",
  colour: "#643010",
  stack: "D3.js",
  demo_link: "http://www.clyw.ca/pages/clywmparison",
  github_link: "https://github.com/joshwcomeau/CLYWmparison_blogembed",
  project_type: "Personal Project",
  project_length: "48 hours",
  integration: nil,
  overview: "<p>For the past 10 years, I've been an avid yoyo enthusiast. Yoyos have come a long way in recent years, and typically yoyos are compared by 3 primary stats: diameter, width and weight.</p>
  <p>Using D3.js, I built a yoyo comparison tool that uses a radar graph to display the relative difference in specs. Chris Mikulin, owner of Caribou Lodge Yoyo Works, liked the tool so much that he embedded it in their official site." ,
  technical_challenges: "It took a while before I realized that the radar chart was the best way to visualize this data. With three-pronged data sets where the unit of measurements aren't the same, it can be challenging to provide meaningful, accurate representations."
})

clyw.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_clywmparison.jpg', placement: 0)
projects << clyw


percentext = Project.new({
  display_name: "Percentext",
  thumb_path: "https://s3.amazonaws.com/joshwcc/percentext_thumb.png",
  colour: "#30505c",
  stack: nil,
  demo_link: "http://www.percentext.com",
  github_link: "https://github.com/joshwcomeau/percentext",
  project_type: "Open-source tool",
  project_length: "1 week",
  integration: nil,
  overview: "<p>Percentext is a jQuery plugin that dynamically resizes text so that it fills a specified percentage of the available width.</p>
  <p>Unlike just about every other DOM element, text elements like headers can't be sized by width. This plugin allows front-end developers to style their headings by width instead of font-size, in a dynamic, responsive way.",
  technical_challenges: "Trying to strike the perfect balance between accuracy and performance. The approach I took was iterative; experimenting with various font-sizes and letter-spacings. The best-case finished in just 2 or 3 iterations, but some cases took up to 60. I managed to reduce it to <15 without a noticeable change in accuracy."
})

percentext.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_percentext.png', placement: 0)
projects << percentext

schedulr = Project.new({
  display_name: "Schedulr",
  thumb_path: "https://s3.amazonaws.com/joshwcc/schedulr_thumb.png",
  colour: "#30a05a",
  stack: "Rails, PostgreSQL, jQuery, jQuery UI, Handlebars",
  demo_link: nil,
  github_link: "https://github.com/joshwcomeau/Schedulr",
  project_type: "Bitmaker Labs final project",
  project_length: "2 weeks",
  integration: nil,
  overview: "<p>My final project for Bitmaker Labs, Schedulr is a tool to help small/medium sized businesses deal with the hassle of employee scheduling.</p>
  <p>Featuring a drag-and-drop schedule creator, managers can quickly whip up a schedule for the week. Employees set their availability through their own control panel, consolidating this information in one place for the managers.</p>" ,
  technical_challenges: "Time is tricky. There were a lot of edge cases that we weren't able to flesh out in the alloted time, such as businesses that are open 24 hours where shifts cross over the midnight threshold."
})

schedulr.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_schedulr.jpg', placement: 0)
projects << schedulr

marsrover = Project.new({
  display_name:  "Mars Rover",
  thumb_path: "https://s3.amazonaws.com/joshwcc/marsrover_thumb.png",
  colour: "#3d7a00",
  stack: "Sinatra, CSS3",
  demo_link: "https://marsrover.herokuapp.com",
  github_link: "https://github.com/joshwcomeau/Mars-Rover-HTML",
  project_type: "Just for fun",
  project_length: "48 hours",
  integration: nil,
  overview: "<p>One of the earlier assignments at Bitmaker Labs was to create a console-based Mars Rover simulator. I decided to create an HTML implementation, with the added challenge that I wanted to see if it was possible without using any Javascript.</p>
  <p>By using Sinatra to dynamically generate CSS3 keyframe animations on page-load, this Mars Rover will follow a sequence of move/turn instructions provided by the user.</p>" ,
  technical_challenges: "This would have been a very easy task had I allowed myself to use Javascript. Trying to build a dynamic, responsive mars rover without the use of JS was a challenge."
})

marsrover.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_marsrover.png', placement: 0)
projects << marsrover

cgol = Project.new({
  display_name:  "Conway's Game of Life",
  thumb_path: "https://s3.amazonaws.com/joshwcc/conwaysgameoflife_thumb.png",
  colour: "#cd4923",
  stack: "Javascript",
  demo_link: "http://www.josh-lab.com/life",
  github_link: "https://github.com/joshwcomeau/game_of_life",
  project_type: "Just for fun",
  project_length: "2-3 days",
  integration: nil,
  overview: "<p>Conway's Game of Life is a cellular automaton simulator in which cells live, die or reproduce based on their number of neighbors. It leads to hypnotizing graphical flourishes as these 'cells' spread all over the screen. <a href='http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life' target='_blank'>Wikipedia summarizes it well.</a></p>
  <p>My implementation uses regular DOM elements to represent grids and cells, and the algorithm was built from scratch using Javascript.",
  technical_challenges: "Performance was where I spent much of my energy. My initial algorithm would check the 'state' of every cell during every round. After some experimentation, I realized I only needed to check living cells and their neighbors. This realization allowed for a massive performance boost. The real bottleneck now is the DOM manipulation."
})

cgol.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_conwaysgameoflife.png', placement: 0)
projects << cgol

earthy = Project.new({
  display_name:  "Earthy",
  thumb_path: "https://s3.amazonaws.com/joshwcc/earthy_thumb.png",
  colour: "#345200",
  stack: "Rails, PostgreSQL, jQuery",
  demo_link: "http://earthy.herokuapp.com",
  github_link: "https://github.com/tjalil/earthy",
  project_type: "Hackathon",
  project_length: "48 hours",
  integration: nil,
  overview: "<p>Built as part of the NASA Space Apps Hackathon in mid-2014, our team of 9 Bitmakers built Earthy, a name-that-place trivia game that uses NASA satellite imagery.</p>
  <p>Named as one of the top-10 global submissions for our category, and with an honourable mention in sustainability, Earthy proved to be an invaluable learning experience.",
  technical_challenges: "The biggest hurdle we had to overcome was organization. With 9 members, it was difficult to collaborate. Amazingly, we didn't wind up with too many merge conflicts when we consolidated all our work."
})

earthy.images << Image.new(src: 'https://s3.amazonaws.com/joshwcc/detail_earthy.jpg', placement: 0)
projects << earthy



projects.reverse.each(&:save)

# {
#     display_name:  "Portfolio",
#     thumb_path: "portfolio_thumb.png",
#     colour: "#04bfbf",
#     stack: "Rails, PostgreSQL, Angular.js",
#     demo_link: "You're on it!",
#     github_link: "https://github.com/joshwcomeau/joshwcc_ver2",
#     project_type: "Personal project",
#     project_length: "3 days",
#     integration: nil,
#     overview: "How's this for breaking the third wall? The site you're on was built over the course of 3 days using Rails and Angular.js"
#   },
