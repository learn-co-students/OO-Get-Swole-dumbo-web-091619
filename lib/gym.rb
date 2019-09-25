# **Gym**

#   - Get a list of all gyms

#   - Get a list of all memberships at a specific gym

#   - Get a list of all the lifters that have a membership to a specific gym

#   - Get a list of the names of all lifters that have a membership to that gym

#   - Get the combined lift total of every lifter has a membership to that gym


class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  #   - Get a list of all gyms WORKS
    @@all
  end

  def memberships
  #   - Get a list of all memberships at a specific gym WORKS
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
  #   - Get a list of all the lifters that have a membership to a specific gym WORKS
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def lifters_names
  #   - Get a list of the names of all lifters that have a membership to that gym WORKS
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
  #   - Get the combined lift total of every lifter has a membership to that gym WORKS
    self.lifters.reduce(0) do |sum, lifter|
      sum + lifter.lift_total
    end
  end

end
