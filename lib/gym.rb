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

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters 
    memberships.map(&:lifter)
  end

  def names
    lifters.map(&:name)
  end

  def lift_totals
    self.memberships.reduce(0) do |total, membership|
      total + membership.lifter.lift_total
    end
  end
end
