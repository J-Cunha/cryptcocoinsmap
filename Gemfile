source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'activemodel-serializers-xml'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'bootstrap3-datetimepicker-rails'
gem 'coffee-rails', '~> 4.2'
gem 'crono' #scheduled jobs
gem 'devise' #authentication
gem 'geocoder' #google maps address to lat and long converter
gem 'globalize', git: 'https://github.com/globalize/globalize'
gem 'gmaps4rails'     #google maps API
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery_mask_rails'
gem 'mail_form'
gem 'momentjs-rails'
gem 'mysql2'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.2'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'underscore-rails'#google maps API dependency

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.6'
  gem 'selenium-webdriver'
end

group :development do
  gem 'faker'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'locales_export_import' #For export and import translations
  gem 'nokogiri'
  gem 'railroady'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
