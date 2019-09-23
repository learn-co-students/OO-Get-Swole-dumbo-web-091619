class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def get_memberships
    Membership.all.select { |membership| membership.lifter == self}
  end

  def get_gyms
    get_memberships().map { |membership| membership.gym.name }
  end

  def self.get_lift_total
    sum = 0

    total = Lifter.all.map { |person| sum += person.lift_total }

    sum / total.length
  end

  def membership_cost
    sum = 0

    get_memberships().map { |membership| sum += membership.cost }

    sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

  def self.all
    @@all
  end

end