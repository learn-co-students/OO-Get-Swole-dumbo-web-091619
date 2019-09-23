class Gym
  
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def memberships_at_gym
    Membership.all.select { |memb| memb.gym == self }
  end 
  
  def lifters_at_gym
    self.memberships_at_gym.map { |memb| memb.lifter }
  end 
  
  def lift_total_at_gym
    total = 0
    self.lifters_at_gym.each {|lifter| total += lifter.lift_total }
    total
  end 
  
end
