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
  Membership.all.select {|member| member.gym == self}
end

def lifters
  self.memberships.map{|member| member.lifter}
end

def lift_totals
self.lifters.reduce (0) {|sum, lifter| sum + lifter.lift_total}
end

end
