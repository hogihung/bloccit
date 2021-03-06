source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

group :production do
  gem 'pg'
end

group :development do
  #gem 'sqlite3'
  gem 'pg'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

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
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'rails_12factor', group: :production

# CSS Checkpoint, add Twitter Boostrap CSS framework
gem 'bootstrap-sass', '~> 3.1.1'

# Seeding the database checkpoint
gem 'faker'

# Adding on my own to provide better looking data view at console
gem 'hirb'

# Checkpoint 10 - User Auth
gem 'devise'

# Checkpoint  12 - Authorization
gem 'pundit'

# Checkpoint 16 - Post Markdown
gem 'redcarpet'

# Checkpoint 17 - Uploading Images
gem 'carrierwave'
gem 'mini_magick'
gem 'fog'
gem 'figaro'

# Adding on my own - pry support
gem 'pry-rails', :group => :development

# Checkpoint 18 - Pagination
gem 'will_paginate', '~> 3.0.5'

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'database_cleaner'
end

