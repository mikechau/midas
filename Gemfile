source 'https://rubygems.org'

gem 'rails', '3.2.14'

group :production do
  gem 'mysql2'
end

group :development do
  gem 'sqlite3'
  gem 'quiet_assets', '>= 1.0.1'
  gem 'better_errors', '>= 0.2.0'
  gem 'binding_of_caller', '>= 0.6.8'
end

group :development, :test do
  gem 'rspec-rails', '>= 2.11.4'
  gem 'factory_girl_rails', '>= 4.1.0'
end

group :test do
  gem 'database_cleaner', '>= 0.9.1'
  gem 'email_spec', '>= 1.4.0'
  gem 'cucumber-rails', '>= 1.3.0', :require => false
  gem 'launchy', '>= 2.1.2'
  gem 'capybara', '>= 2.0.1'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'bootstrap-sass', '>= 2.1.1.0'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'figaro', '>= 0.5.0'
gem 'devise', '>= 2.1.2'
gem 'cancan', '>= 1.6.8'
gem 'rolify', '>= 3.2.0'
gem 'simple_form', '>= 2.0.4'
