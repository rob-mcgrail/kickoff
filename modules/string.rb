# Helpers added to String
class String
  def parameterize(delimeter = '-')
    self.gsub(/[^a-z0-9\-_!?]+/i, delimeter).downcase
  end
  
  def hash
    BCrypt::Password.create(self)
  end

  def make_matchable
    BCrypt::Password.new(self)
  end
end
