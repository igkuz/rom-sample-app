require_relative 'boot'
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    configuration = ROM::Configuration.new(:sql, "mysql2:///#{DB_CONFIG[:name]}", DB_CONFIG)
    ROM::SQL::RakeSupport.env = configuration
  end
end
