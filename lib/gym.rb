class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all = self
  end


  def self.all
  # - Get a list of all gyms
    @@all
  end


  def all_memberships
    # - Get a list of all memberships at a specific gym
    Membership.all.filter { |membership| membership.gym == self }
  end


  def all_lifters
  # - Get a list of all the lifters that have a membership to a specific gym
    Membership.all.filter { |membership| membership.gym == self  }.map { |membership| membership.lifter }
  end


  def lifter_names
  # - Get a list of the names of all lifters that have a membership to that gym
    Membership.all.filter { |membership| membership.gym == self }.map { |membership| membership.lifter.name }.sort
  end


  def lift_total
  # - Get the combined lift total of every lifter has a membership to that gym
    Membership.all.filter { |membership| membership.gym == self }.map { |membership| membership.lifter.lift_total }.sum
  end
end
