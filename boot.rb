ENV['RACK_ENV'] ||= 'development'
APP_ROOT = File.expand_path('../', __FILE__)
ENV['BUNDLE_GEMFILE'] ||= File.join(APP_ROOT, '/', 'Gemfile')
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

DB_CONFIG = {
  name: 'rom_app_development',
  host: 'db',
  username: 'root',
  password: '',
  port: 3306,
  encoding: 'utf8mb4'
}