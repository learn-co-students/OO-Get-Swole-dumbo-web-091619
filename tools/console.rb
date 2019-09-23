# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("Gold's Gym")
gym2 = Gym.new("Blink")
gym3 = Gym.new("Planet Fitness")

lifter1 = Lifter.new("Jessica", 300)
lifter2 = Lifter.new("Rob", 500)
lifter3 = Lifter.new("James", 1000)

Membership.new(lifter1, gym3, 10)
Membership.new(lifter2, gym2, 25)
Membership.new(lifter3, gym1, 50)
Membership.new(lifter1, gym2, 25)
Membership.new(lifter3, gym2, 25)

binding.pry

puts "Gains!"
