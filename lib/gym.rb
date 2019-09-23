class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def get_memberships
    Membership.all.select { |gym| gym.gym.name == self.name }
  end

  def get_lifters
    get_memberships.map { |membership| membership.lifter  }
  end

  def list_names
    get_lifters.map { |lifter| lifter.name }
  end

  def get_lift_total
    sum = 0

    total = get_lifters.map { |lifter| sum += lifter.lift_total }

    sum
  end

  def self.all
    @@all
  end
end