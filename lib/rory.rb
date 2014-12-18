if ENV['RORY_STAGE']
  puts "\n\tDEPRECATION: use 'RORY_ENV' instead of 'RORY_STAGE'\n\n"
  ENV['RORY_ENV'] = ENV['RORY_STAGE']
end

ENV['RACK_ENV'] || 'development'

require 'yaml'
require 'sequel'
require 'rory/hash_with_dubious_semantics'
require 'rory/application'
require 'rory/dispatcher'
require 'rory/route'
require 'rory/support'
require 'rory/controller'

module Rory
  class << self
    attr_accessor :application

    def root
      app = application
      app && app.root
    end
  end
end
