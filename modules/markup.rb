helpers do
  #Method overide
  def form_method(method)
    "<input name='_method' type='hidden' value='#{method}' />"
  end
end
