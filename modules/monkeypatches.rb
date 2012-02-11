# Over-riding a warning about #options being deprecated.
#
# Some library is calling #options still. 
# Check some time in the future that this is
# still the case.

class Sinatra::Base
  def options
    settings
  end
end

# 1.8.7-head freaks out when it sees
# calls to #id, which is annoying because
# it's a perfectly normal datamapper method...

class Object
  def id
  end
end
