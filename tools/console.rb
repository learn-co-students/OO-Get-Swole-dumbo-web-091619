# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Joe", 105)
lifter2 = Lifter.new("Mac", 250)
lifter3 = Lifter.new("John", 150)
lifter4 = Lifter.new("Sara", 125)

gym1 = Gym.new("NYC Gym")
gym2 = Gym.new("Equinox")

membership1 = Membership.new(20, lifter1, gym1)
membership2 = Membership.new(100, lifter2, gym2)
membership3 = Membership.new(100, lifter3, gym2)
membership4 = Membership.new(100, lifter2, gym1)

binding.pry

puts "Gains!"
