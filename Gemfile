source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'devise'
gem 'mini_racer', platforms: :ruby
gem 'pg'
gem 'puma'
gem 'rails', '~> 5.1.3'
gem 'react_on_rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks'
gem 'uglifier'
gem 'webpacker_lite'

group :development, :test do
  gem 'capybara', '~> 2.13'
  gem 'factory_girl'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'pry-stack_explorer'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'selenium-webdriver'
end

group :development do
  gem 'foreman'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
