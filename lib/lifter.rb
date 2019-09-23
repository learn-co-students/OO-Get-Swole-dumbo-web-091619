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
    Membership.all.select {|memb| memb.lifter == self}  
  end 
  
  def gyms
    self.memberships.map {|memb| memb.gym}
  end 
  
  def self.avg_lift_total 
    total = 0
    Lifter.all.each do |lifter|
      total += lifter.lift_total 
    end
    total/Lifter.all.count
  end
  
  def total_cost
    total = 0
    self.memberships.each { |memb| total += memb.cost }
    total
  end 
  
  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end 
  
end
