require_relative './lifter.rb'
class Membership
  include ForAll_Save::Instance

  attr_reader :lifter, :gym
  attr_accessor :cost
  @@allclass = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    save
  end

  def self.all
    @@allclass
  end
end
