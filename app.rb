# Sinatra
require 'sinatra'
require 'sinatra/static_assets'
require 'sinatra/flash'
# Database
require 'dm-core'
require 'dm-aggregates'
require 'dm-validations'
require 'dm-timestamps'
require 'dm-migrations'
# Redis
require 'redis'
# Templates
require 'haml'
require 'RedCloth'
# Authentication
require 'warden'
require 'bcrypt'

require './settings'

Dir['./modules/*.rb'].each {|file| require file }
Dir['./app/*.rb'].each {|file| require file }

DataMapper.finalize
