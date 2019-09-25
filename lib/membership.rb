## issa connection bb
# **Membership**

#   - Get a list of all memberships

class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end
  
  def self.all
  #   - Get a list of all memberships WORKS
    @@all
  end

end
