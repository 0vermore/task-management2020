source 'http://rubygems.org'
git_source(:github) { |repo| "http://github.com/#{repo}.git" }

ruby '2.6.6'
gem 'rails', '~> 6.1.0'
gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'jquery-rails'
gem 'simple_form'
gem 'twitter-bootstrap-rails'
gem 'bootsnap', '>= 1.4.4', require: false

group :assets do
  gem 'sass-rails', '>= 6'
  gem 'uglifier'
  gem 'coffee-rails'
  gem 'therubyracer', platforms: :ruby
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'sqlite3', '~> 1.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
