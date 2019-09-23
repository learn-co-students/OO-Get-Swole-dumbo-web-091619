module ForAll_Save
  module Instance
    def save 
      self.class.all << self
    end
  end
end


class Lifter 
  include ForAll_Save::Instance

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    save
  end

  def self.all
    @@all
  end

  def find_my_memberships
    Membership.all.select{|mships| mships.lifter == self}
  end

  def find_my_gyms
    self.find_my_memberships.map{|mem| mem.gym}
  end

  def self.total_liftt
    Lifter.all.reduce(0){|sum, num| sum + num.lift_total}
  end

  def total_cost
    self.find_my_memberships.reduce(0){|sum, num| sum + num.cost}
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
