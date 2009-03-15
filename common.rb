require 'rubygems'
require 'dm-core'
require 'dm-aggregates'
require 'dm-serializer'

require 'models/activity'

environment = (ENV["e"] || "development")
DataMapper.setup(:default, YAML::load(File.open('database.yml'))[environment])