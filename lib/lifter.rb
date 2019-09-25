# **Lifter**

#   - Get a list of all lifters

#   - Get a list of all the memberships that a specific lifter has

#   - Get a list of all the gyms that a specific lifter has memberships to

#   - Get the average lift total of all lifters

#   - Get the total cost of a specific lifter's gym memberships

#   - Given a gym and a membership cost, sign a specific lifter up for a new gym


class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
  #   - Get a list of all lifters WORKS
    @@all
  end

  def memberships
  #   - Get a list of all the memberships that a specific lifter has WORKS
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
  #   - Get a list of all the gyms that a specific lifter has memberships to WORKS
    self.memberships.map do |membership|
      membership.gym
    end
  end


  def new_membership(membership_cost, gym)
    #   - Given a gym and a membership cost, sign a specific lifter up for a new gym WORKS
    Membership.new(membership_cost, gym, self)
  end

  def total_gyms_cost
    #   - Get the total cost of a specific lifter's gym memberships WORKS
    self.memberships.reduce(0) do |sum, membership|
      sum + membership.cost
    end
  end

  def self.lift_total
  #   - Get the average lift total of all lifters WORKS
    self.all.reduce(0) do |sum, lifter|
      sum + lifter.lift_total
    end
  end

  


end
