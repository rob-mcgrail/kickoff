require 'rake'

task :default => [:test]

env = ENV["env"] || "development"

task :test do
  require './app'
  Bundler.require(:test)
  require 'minitest/autorun'
  Dir['./test/test_*.rb'].each {|file| require file }
end

namespace :db do
  require './app'
  set :environment, env.to_sym
  load './settings.rb'

  task :update do
    puts "\nNon-destructively updating:\n\n"
    puts settings.db
    DataMapper.auto_upgrade!
  end

  task :migrate do
    puts "\nDestructively update #{env} database? Y/N\n"
    if $stdin.gets.chomp.downcase == 'y'
      puts "\nDestructively updating:\n\n"
      puts settings.db
      DataMapper.auto_migrate!
    end
  end
end

task :server do
  system("bundle exec rackup -p 9000 -s thin")
end

task :install do
  system("bundle install")
  Rake::Task["test"].invoke
  Rake::Task["db:migrate"].invoke
end
