require 'rubygems'
require 'spec'
require 'spec/interop/test'
require 'sinatra/test'
require File.dirname(__FILE__) + '/../app'

set :environment, :test
Test::Unit::TestCase.send :include, Sinatra::Test