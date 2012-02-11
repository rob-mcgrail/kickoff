get '/?' do
  title 'home'
  flash[:success] = '<strong>Everything</strong> is fine.'
  haml :main
end
