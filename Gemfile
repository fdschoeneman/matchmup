source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '4.1.1'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views

gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# authentication
gem 'devise'
gem 'devise_invitable'

# better development data
# gem 'faker'
# gem 'faker-bloocher'
# gem 'faker-stoked', github: 'fdschoeneman/faker-stoked', branch: 'master'

# authorization
gem 'pundit'

# State machine for demo
gem 'aasm'

# store application variables safely
gem 'figaro'

group :development do

end

group :test do

end

group :development, :test do

  gem 'minitest-rails'
  gem 'factory_girl_rails'
  gem 'spring'

  # ubuntu notifications for test
  gem 'rb-inotify'
  gem 'rb-fsevent'

   # debugging
  gem 'debugger'
  gem 'pry'
  gem 'awesome_print', require: 'ap'

  # Guards
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-minitest'

  gem 'database_cleaner'
end

group :doc do

  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end


