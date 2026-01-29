# カバレッジ取得のためsimplecovを追記
require "simplecov"
SimpleCov.start "rails"

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  config.fixture_paths = [
    Rails.root.join('spec/fixtures')
  ]

  config.use_transactional_fixtures = true
  config.filter_rails_from_backtrace!
  
  # システムテストでエラーになった際はキャプチャを取得
  config.after(:each, type: :system) do |test|
    next unless test.exception
    save_path = Rails.root.join("tmp/capybara")
    FileUtils.mkdir_p(save_path)
    save_page(save_path.join("#{test.full_description}.html"))
  end
end
