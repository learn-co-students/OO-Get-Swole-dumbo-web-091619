class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end


  def self.all
    # - Get a list of all lifters
    @@all
  end


  def get_memberships
    # - Get a list of all the memberships that a specific lifter has
    Membership.all.filter { |membership| membership.lifter == self}
  end


  def get_gyms
  # - Get a list of all the gyms that a specific lifter has memberships to
    get_memberships.map { |membership| membership.gym.name }
  end


  def get_gym_cost
  # - Get the total cost of a specific lifter's gym memberships
    get_memberships
  end


  def self.average_lift
  # - Get the average lift total of all lifters
    lift_weights = Lifter.all.map { |lifter| lifter.lift_total }
    lift_weights.sum / lift_weights.size
  end


  def new_gym_membership(gym, cost)
  # - Given a gym and a membership cost, sign a specific lifter up for a new gym
    # cost, gym, lifter
    Membership.new(cost, gym, self)
  end
end
