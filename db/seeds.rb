# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def normalize_name(name)
  name.downcase.gsub(/[^\w]/i, '')
end


projects = [ "#paid", "HungryBelly", "ColourMatch", "CLYWmparison", "Percentext", "Schedulr", "Mars Rover", "This Portfolio", "Conway's Game of Life", "Earthy" ].reverse

projects.each do |p|
  puts "Creating project #{p}"

  Project.create({
    display_name: p,
    thumb_path:   "#{normalize_name(p)}_thumb.png"
  })
  # Adding a sleep so that there is a clear difference in created_at times, so the order is preserved.
  sleep 1
end


