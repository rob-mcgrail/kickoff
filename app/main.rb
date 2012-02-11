get '/?' do
  title 'home'
  flash[:success] = 'Everything is fine.'
  haml :main
end
