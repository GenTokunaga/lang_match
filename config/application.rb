require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
Bundler.require(*Rails.groups)

module LangMatch
  class Application < Rails::Application
    config.load_defaults 8.1
    config.autoload_lib(ignore: %w[assets tasks])
    config.generators.system_tests = nil

    # Railsのタイムゾーンを日本時間に変更
    config.time_zone = "Tokyo"
    config.active_record.default_timezone = :local

    # 日本語メッセージファイルを読込
    config.i18n.default_locale = :ja
  end
end
