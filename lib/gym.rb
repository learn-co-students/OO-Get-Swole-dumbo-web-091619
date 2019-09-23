require_relative './lifter.rb'
class Gym
  include ForAll_Save::Instance
 
  attr_reader :name
  attr_accessor :lifter_list
  @@all = []
  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def find_memberships
    Membership.all.select{|mem| mem.gym == self}
  end

  def find_lifters
    self.find_memberships.map{|mem| mem.lifter}
  end

  def find_lifters_name
    self.find_lifters.map{|lifter| lifter.name}
  end

  def total_lift
    self.find_lifters.reduce(0){|sum, num| sum + num.total_lift}
  end

end
