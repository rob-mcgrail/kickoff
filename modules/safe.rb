helpers do
  include Rack::Utils
  alias_method :safe, :escape_html
  alias_method :h, :escape_html
end
