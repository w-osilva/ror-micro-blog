source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.1'

gem 'rails', '~> 5.0.1'
#gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'
gem 'unicorn'
# gem 'capistrano-rails', group: :development
gem 'mysql2'
gem 'simple_form'
gem 'devise'
gem 'pundit'
gem 'enumerize'
# gem 'friendly_id', '~> 5.1.0'
gem 'responders'
gem 'faker'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'rspec-collection_matchers'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'rails-controller-testing'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
