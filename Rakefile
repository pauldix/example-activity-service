require 'active_record'  
require 'yaml'  

task :default => :spec

namespace :db do
  task :migrate => :environment do
    DataMapper.auto_migrate!
  end
end

task :environment do
  load 'common.rb'
end

namespace :gems do
  task :install do
    puts `sudo gem install do_sqlite3 dm-core data_mapper dm-aggregates dm-serializer`
  end
end

task :spec do
  ENV["e"] = "test"
  load 'common.rb'
  Dir[File.join('spec', '*.rb')].sort.each { |spec| load spec }
end
