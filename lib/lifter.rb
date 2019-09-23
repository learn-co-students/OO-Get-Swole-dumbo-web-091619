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
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def membership_fees
    fees = memberships.map do |membership|
      membership.cost
    end
    fees.reduce do |sum, fee|
      sum + fee
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift_total
    total_lifts = self.all.map do |lifter|
      lifter.lift_total
    end
    reduced = total_lifts.reduce do |sum, lift|
      sum + lift
    end
    reduced/total_lifts.length
  end

  def sign_up(gym,cost)
    Membership.new(self, gym, cost)
  end

end
