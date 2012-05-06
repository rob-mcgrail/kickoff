require 'rubygems'
require 'bundler'

Bundler.setup(:default)

require './app'


# Rack configuration
# Serves static files in dev
# makes available /__rack_bug__/bookmarklet.html
# No password
if settings.development?
  require 'rack/bug'
  use Rack::Static, :urls => ['/css', '/img', '/js', '/less', '/robots.txt', '/favicons.ico'], :root => "public"
  use Rack::Bug, :secret_key => 'youneedthisforsqldebugging'
end

# Authentication middleware
# https://github.com/hassox/warden/wiki/overview

use Warden::Manager do |mgmt|
  mgmt.default_strategies :password
  mgmt.failure_app = Sinatra::Application
end


# Run
run Sinatra::Application
