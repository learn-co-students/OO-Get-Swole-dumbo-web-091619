class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all 
  end

  def memberships
   Membership.all.select {|member| member.lifter == self}
  end

  def gyms
    self.memberships.map {|member| member.gym}
  end

  def self.lift_total
    Lifter.all.reduce(0) {|sum ,lifter| sum + lifter.lift_total } / Lifter.all.size
  end

  def gym_membership_costs
    self.memberships.reduce(0) {|sum, gym| sum + gym.cost}
  end

  def add_gym_membership(gym,cost)
  Membership.new( cost,self, gym) 
  end

end
