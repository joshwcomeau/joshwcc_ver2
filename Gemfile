source 'https://rubygems.org'

# Default Rails gems
gem 'rails', '4.2'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',         group: :doc
gem 'spring',                   group: :development




gem 'annotate'                      # Provides Schema-like annotations on the models' rb files.
gem 'autoprefixer-rails'            # Adds CSS vendor prefixes.
gem 'aws-sdk-v1'                    # Connect to Amazon S3
gem 'bower-rails'                   # Front-end package manager.
gem 'gon'                           # Pass data from Rails to JS in a nice, tidy way
gem 'quiet_assets'                  # Hides asset stuff from the console.
gem 'rails_12factor'                # Heroku wants this.
gem 'sorcery'                       # Simple user authentication.
gem 'thin'                          # better app server.

group :development, :test do 
  gem 'factory_girl_rails'          # Provides factories for quick creation during tests.
  gem 'faker'                       # Provides quick data for seeds and tests
  gem 'pry'                         # Alternative console, allows for JS-style breakpoints.
  gem 'pry-byebug'                  # A Pry augmentor, provides convenience methods like 'next'.
  gem 'rspec-rails'                 # Testing framework. Better than what's included with Rails.
end 

group :test do 
  gem 'capybara'                    # Used for feature (browser-based) tests.
  gem 'capybara-webkit'             # Allows feature tests to run in a headless webkit state. Faster, but you can't see the magic.
  gem 'capybara-angular'            # Allows feature tests to work with Angular
  gem 'database_cleaner'            # Wipes the database between tests.
  gem 'guard-rspec'                 # Watches files for automated test running.
  gem 'launchy'                     # Launches a browser to show the state of a feature test. Useful for debugging
  gem 'selenium-webdriver'          # Allows feature tests to run in the browser. Slower, but you can see the magic.
end


# Deployment gems
# gem 'capistrano', '~> 3.1.0'
# gem 'capistrano-bundler', '~> 1.1.2'
# gem 'capistrano-rails', '~> 1.1.1'
# gem 'capistrano-rbenv', '~> 2.0'
# gem 'capistrano3-puma'

