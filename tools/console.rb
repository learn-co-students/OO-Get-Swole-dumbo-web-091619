# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1=Lifter.new("Rob Meija", 34)
l2=Lifter.new("Emirhan Kaplan", 23)

g1=Gym.new("Gym of New York")
g2=Gym.new("Brooklyn Muscles")

m1=Membership.new(l1, g1, 49)
m2=Membership.new(l1, g2, 159)
m3=Membership.new(l2, g2, 199)

binding.pry

puts "Gains!"


