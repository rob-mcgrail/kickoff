require 'rubygems'
require 'bundler'

Bundler.setup(:default)

require './app'


# Rack configuration

# Serve static files in dev 

if settings.development?
  use Rack::Static, :urls => ['/css', '/img', '/js', '/less', '/robots.txt', '/favicons.ico'], :root => "public"
end

# Authentication middleware
# https://github.com/hassox/warden/wiki/overview

use Warden::Manager do |mgmt|
  mgmt.default_strategies :password
  mgmt.failure_app = Sinatra::Application
end


# Run

run Sinatra::Application
