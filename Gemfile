source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use sqlite3 as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma'

gem 'gmaps4rails'     #google maps API
gem 'underscore-rails'#google maps API dependency
gem 'geocoder' #google maps address to lat and long converter

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# Use SCSS and bootstrap for stylesheets
gem 'sass-rails'
gem 'bootstrap-sass'
#gem 'country_select'
gem 'jquery-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
gem 'clipboard-rails'
#For datetimepicker
gem 'bootstrap3-datetimepicker-rails'
gem 'momentjs-rails'
#For Mail_form
gem 'mail_form'
gem 'simple_form'
#mask for forms
gem 'jquery_mask_rails'
#cocoon for nested attributes
gem 'cocoon'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'devise' #authentication
gem 'crono' #scheduled jobs

# omniauths
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-twitter'
gem 'omniauth-github'

gem 'globalize', git: 'https://github.com/globalize/globalize'
gem 'activemodel-serializers-xml'

# CarrierWave gem provides a simple and extremely flexible way to upload files 
# from Ruby applications. It works well with Rack based web applications, 
# such as Ruby on Rails
gem 'carrierwave',             '~> 1.0'
# A ruby wrapper for ImageMagick or GraphicsMagick command line.
gem 'mini_magick'
# Use Cocoon to nerest forms
gem 'cocoon'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.6'
  gem 'faker'
  gem 'shoulda', '~> 3.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'railroady'   #Generate UML models
  gem 'nokogiri'    #parse html
  gem 'locales_export_import' #For export and import translations
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
