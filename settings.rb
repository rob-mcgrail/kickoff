configure do
  set :method_override, true # For HTTP verbs
  set :sessions, true
  set :logging, false # stops annoying double log messages.
  set :static, false # see config.ru for dev mode static file serving
  set :redis, 1 # redis database
end

configure :development do
  set :db, 'sqlite3://' + settings.root + '/db/development.sqlite3'
  set :raise_errors, true
  set :show_exceptions, true
  set :haml, {:format => :html5, :ugly => false, :escape_html => true}
end

configure :production do
  set :db, 'sqlite3://' + settings.root + '/db/production.sqlite3'
  set :raise_errors, false
  set :show_exceptions, false
  set :haml, {:format => :html5, :ugly => true, :escape_html => true}
end

# Database
# http://datamapper.rubyforge.org/dm-core/DataMapper.html

DataMapper.setup(:default, settings.db)

DataMapper::Property::String.length(255)
DataMapper::Property.required(true)
DataMapper::Logger.new($stdout, :info) if settings.development?

# Redis
# http://redis.io/commands
$redis = Redis.new
$redis.select settings.redis
