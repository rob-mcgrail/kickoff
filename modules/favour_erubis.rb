# Strongly encourages sinatra to render .erb files
# with the much-faster erubis library

module Sinatra::Erb
  def erb(content, options={})
    begin
      require 'erubis'
      @@erb_class = Erubis::Eruby
    rescue LoadError
      require "erb"
      @@erb_class = ::ERB
    end
    render(:erb, content, options)
  end

  private

  def render_erb(content, options = {})
    @@erb_class.new(content).result(binding)
  end
end
