require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)
Bundler.require(:dev) if settings.development?
Bundler.require(:production) if settings.production?

require './settings'

Dir['./modules/*.rb'].each {|file| require file }
Dir['./app/*.rb'].each {|file| require file }

DataMapper.finalize
