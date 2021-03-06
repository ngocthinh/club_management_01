source "https://rubygems.org"

gem "bootstrap-sass"
gem "rails", "~> 5.0.0", ">= 5.0.0.1"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "font-awesome-rails"
gem "devise"
gem "carrierwave"
gem "ckeditor"
gem "mini_magick"
gem "config"
gem "i18n-js", ">= 3.0.0.rc11"
gem "faker"
gem "ffaker"
gem "kaminari"
gem "bootstrap-kaminari-views"
gem "truncate_html"
gem "chartkick"
gem "public_activity"
gem "figaro"
gem "delayed_job_active_record"
gem "acts-as-taggable-on"
gem "bootstrap-tagsinput-rails"
gem "daemons"
gem "roo"
gem "roo-xls"
gem "activerecord-import"
gem "ransack"
source "https://rails-assets.org" do
  gem "rails-assets-chosen"
end
gem "redis"

group :production do
  gem "pg"
  gem "rails_12factor"
end

group :development, :test do
  gem "byebug", platform: :mri
  gem "pry-rails"
  gem "rspec-rails", "~> 3.4"
  gem "capybara"
  gem "factory_girl_rails", require: false
end

group :development do
  gem "mysql2"
  gem "web-console"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "shoulda-matchers", "~> 3.0", require: false, github: 'thoughtbot/shoulda-matchers'
  gem "database_cleaner", "~> 1.5"
  gem "rails-controller-testing"
  gem "rspec-activemodel-mocks"
  gem "simplecov", require: false
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
