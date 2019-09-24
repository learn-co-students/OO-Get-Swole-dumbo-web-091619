# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


# Gyms
# name
a = Gym.new("Crunch")
b = Gym.new("Barry's")
c = Gym.new("Brooklyn Boulders")


# Lifters
# name, lift_total
d = Lifter.new("Tommy", 100)
e = Lifter.new("Dennis", 200)
f = Lifter.new("Dana", 300)






# Memberships
# cost, gym, lifter
g = Membership.new(100, a, d)
h = Membership.new(110, b, e)
j = Membership.new(120, c, f)
k = Membership.new(130, a, e)
m = Membership.new(140, b, f)








binding.pry

puts "Gains!"
