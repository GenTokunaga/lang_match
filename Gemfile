source 'https://rubygems.org'

# rails new mini_blog -d postgresql -c bootstrap -T -j esbuild
# 上記コマンドでデフォルトインしたもの以外にコメント付与すること
gem 'rails', '~> 8.1'
gem 'propshaft'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'jsbundling-rails'
gem 'turbo-rails'
gem 'cssbundling-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[windows jruby]
gem 'solid_cache'
gem 'solid_queue'
gem 'solid_cable'
gem 'bootsnap', require: false
gem 'kamal', require: false
gem 'thruster', require: false
gem 'image_processing'
gem 'haml-rails' # hamlのため追加
gem 'devise' # 認証のため追加
gem 'simple_form' # フォームの入力を簡素化するため追加
gem 'enumerize' # enum定義のため追加

group :development, :test do
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'bundler-audit', require: false
  gem 'brakeman', require: false
  gem 'sgcop', github: 'SonicGarden/sgcop', branch: 'main' # sgcop準拠のため追加
end

group :development do
  gem 'web-console'
  gem 'html2haml' # haml変換のため追加
  gem 'letter_opener' # メール送信確認用のため追加
  gem 'rails-erd' # 論理モデル可視化用に追加
end

group :test do
  gem 'capybara' # システムテストのために追加
  gem 'rspec-rails' # テストのため追加
  gem 'factory_bot_rails' # テストのため追加
  gem 'faker' # テストのため追加
  gem 'simplecov', require: false # テストカバレッジ取得のため追加
end
