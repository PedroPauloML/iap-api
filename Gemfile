source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'


# A plugin for versioning Rails based RESTful APIs. https://github.com/bploetz/versionist
gem 'versionist'
# Jbuilder: generate JSON objects with a Builder-style DSL https://github.com/rails/jbuilder
gem 'jbuilder'
# Rails >= 3 pry initializer https://github.com/rweng/pry-rails
gem 'pry-rails'
# Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff https://github.com/svenfuchs/rails-i18n
gem 'rails-i18n'
# bcrypt-ruby is a Ruby binding for the OpenBSD bcrypt() password hashing algorithm, allowing you to easily store a secure hash of your users' passwords. https://github.com/codahale/bcrypt-ruby
gem 'bcrypt'
# A ruby implementation of the RFC 7519 OAuth JSON Web Token (JWT) standard.
gem 'jwt'
# Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave', '~> 2.0'
# Cloudinary GEM for Ruby on Rails integration https://github.com/cloudinary/cloudinary_gem
gem 'cloudinary'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
