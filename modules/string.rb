# Helpers added to String

class String
  def parameterize
    self.gsub(/[^a-z0-9\-_!?]+/i, '-').downcase
  end

  def to_hash
    BCrypt::Password.create(self)
  end

  def make_matchable
    BCrypt::Password.new(self)
  end
end
