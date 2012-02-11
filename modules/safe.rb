helpers do
  include Rack::Utils
  alias_method :safe, :escape_html
end
