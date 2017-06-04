source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.1'
gem 'pg'
gem 'puma'
gem 'ridgepole'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'faml'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'dotenv-rails'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end
