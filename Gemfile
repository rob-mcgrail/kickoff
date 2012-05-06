source :rubygems

gem "sinatra"
gem "sinatra-flash"
gem "datamapper"
gem "erubis"
gem "haml"
gem "RedCloth"
gem "warden"
gem "bcrypt-ruby"
gem "trollop"

group :dev do
  gem "thin"
  gem "dm-sqlite-adapter"
end

group :production do
  # libraries required by production go here
  # For instance, perhaps a new db adaptor...
  gem "dm-sqlite-adapter"
end

group :test do
  gem "minitest", :platforms => :mri_18
  gem "minitest-colorize"
  gem "webmock"
end
