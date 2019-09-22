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

  def self.average_lift_total
    total = self.all.reduce(0) do |total, lifter|
      total + lifter.lift_total
    end
    total / self.all.count.to_f
  end

  def memberships 
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms 
    self.memberships.map(&:gym)
  end

  def total_cost_of_gyms
    self.memberships.reduce(0) do |total, membership|
      total + membership.cost
    end
  end

  def sign_up_for(gym, cost)
    Membership.new(cost, self, gym)
  end

end
