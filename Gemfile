source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
gem 'mysql2', '0.3.18'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Make-like program in Ruby
gem 'rake', '~> 10.4.2'
# Display system notifications after running tests
gem 'test_notifier', '~> 2.0.3'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doci
# JSON implementation as Ruby
gem 'json', '~> 1.8.2'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

gem 'autotest-rails', :group => [:development, :test]

gem 'therubyracer'
gem 'execjs'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Use Capybara for integration testing
  gem 'capybara', '~> 2.4.4'

  # Use Cucumber for BDD test
  gem 'cucumber', '~> 2.0.0'

  gem 'cucumber-rails', require: false

  gem 'database_cleaner'

  # Code coverage across your test suites
  gem 'simplecov', '~> 0.10.0'

  # BDD for ruby and rails
  gem 'rspec-rails', '~> 3.2.1' 

  # Use Metricfu for code quality
  gem 'metric_fu', '~> 4.11.4'
  
  # Coveralls server
  gem 'coveralls', require: false
  
end

group :production do
  # HTTP server for Rack applications
  gem 'unicorn'

  # New Relic is a performance management system
  gem 'newrelic_rpm'
  
end
