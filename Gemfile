source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'

gem 'mysql2', '~> 0.3.18'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

gem 'carrierwave'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development
gem 'tzinfo-data'
gem 'tzinfo'

group :production do
  gem 'passenger'
  gem 'execjs'
end

group :development do
  gem 'thin'

  # docker compose debug
  gem 'ruby-debug-ide'
  gem 'debase'
end
gem 'dalli'

gem 'sidekiq', '~> 4.0'
gem 'sinatra', require: nil

# Use debugger
# gem 'debugger', group: [:development, :test]
