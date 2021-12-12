source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '6.1.4'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma'
# Use Redis adapter to run Action Cable in production
gem 'redis-rails'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# Use ActiveModel has_secure_password
gem 'bcrypt'

gem 'graphql'
gem 'graphql-batch'

# テストデータを入れ込むために使用
gem 'faker'

group :development, :test do
  # Reduces boot times through caching; required in config/boot.rb
  gem 'bootsnap', '>= 1.4.4', require: false
  gem 'pry-byebug'
  gem 'pry-rails'

  # Lint
  gem 'rubocop'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # ブラウザでGraphQLのクエリを実行できるGraphiQLを動かすためのgem
  gem 'graphiql-rails'
  gem 'sprockets', '~> 4.0'
end

# テストはRspecで書く
group :test do
  gem 'database_rewinder'
  gem 'json_expressions'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
