require 'rubygems'
require 'rake'
require './environment.rb'

namespace :db do
  desc 'run existing migrations'
  task :migrate do
    ::Sequel.extension :migration
    Sequel::Migrator.run DB, 'db/migrate'
    puts '<= db:migrate executed'
  end
end