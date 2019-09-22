# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter_a = Lifter.new("Rob_a", 55)
lifter_b = Lifter.new("Rob_b", 65)
lifter_c = Lifter.new("Rob_c", 75)
lifter_d = Lifter.new("Rob_d", 85)
lifter_e = Lifter.new("Rob_e", 95)

gym_a = Gym.new("Gym_a")
gym_b = Gym.new("Gym_b")
gym_c = Gym.new("Gym_c")
gym_d = Gym.new("Gym_d")
gym_e = Gym.new("Gym_e")

membership_a = Membership.new(45, lifter_a, gym_a)
membership_a_2 = Membership.new(100, lifter_a, gym_b)
membership_b = Membership.new(100, lifter_b, gym_b)
membership_c = Membership.new(200, lifter_c, gym_c)
membership_d = Membership.new(250, lifter_d, gym_d)
membership_e = Membership.new(25, lifter_e, gym_e)

p lifter_a, lifter_b, lifter_c, lifter_d, lifter_e
p gym_a, gym_b, gym_c, gym_d, gym_e
p membership_a, membership_b, membership_c, membership_d, membership_e
p "----------------"
p lifter_b.memberships
p lifter_a.gyms.count, lifter_a.gyms
p "Average lyft total = #{Lifter.average_lift_total}" 
p "Total cost of gyms for Lifter_a = $#{lifter_a.total_cost_of_gyms}"

p "Added lifter_e to gym_c"
lifter_e.sign_up_for(gym_c, 55)

p "Lifter_e gym count #{lifter_e.gyms.count}" 

p "Gym_a memberships =#{gym_a.memberships}"
p "Gym_a lifters = #{gym_a.lifters}"
p "Gym_a names #{gym_a.names}"

p "Gym_b memberships =#{gym_b.memberships}"
p "Gym_b lifters = #{gym_b.lifters}"
p "Gym_b names #{gym_b.names}"

p "Gym_c memberships =#{gym_c.memberships}"
p "Gym_c lifters = #{gym_c.lifters}"
p "Gym_c names #{gym_c.names}"

p "Gym_a lift_totals = #{gym_a.lift_totals}"
p "Gym_b lift_totals = #{gym_b.lift_totals}"
p "Gym_c lift_totals = #{gym_c.lift_totals}"
p "Gym_d lift_totals = #{gym_d.lift_totals}"

# binding.pry

puts "Gains!"
