helpers do
  # http://rack.rubyforge.org/doc/classes/Rack/MethodOverride.html
  def form_method(method)
    "<input name='_method' type='hidden' value='#{method}' />"
  end
end
