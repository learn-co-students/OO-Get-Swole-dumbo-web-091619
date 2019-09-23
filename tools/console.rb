require_relative '../config/environment.rb'

lifter1 = Lifter.new("lifter1_name", 200)
lifter2 = Lifter.new("lifter2_name", 210)
lifter3 = Lifter.new("lifter3_name", 230)
lifter4 = Lifter.new("lifter4_name", 190)
lifter5 = Lifter.new("lifter5_name", 170)
lifter6 = Lifter.new("lifter6_name", 250)
lifter7 = Lifter.new("lifter7_name", 180)
lifter8 = Lifter.new("lifter8_name", 240)
lifter9 = Lifter.new("lifter9_name", 300)
lifter10 = Lifter.new("lifter10_name", 270)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")
gym4 = Gym.new("Gym4")
gym5 = Gym.new("Gym5")

membership1a = Membership.new(500, lifter1, gym1)
membership2 = Membership.new(300, lifter5, gym1)
membership6 = Membership.new(600, lifter6, gym1)

membership1b = Membership.new(400, lifter1, gym2)
membership1c = Membership.new(300, lifter1, gym3)
membership1d = Membership.new(200, lifter1, gym4)
membership1e = Membership.new(100, lifter1, gym5)

membership3 = Membership.new(400, lifter3, gym3)
membership4 = Membership.new(200, lifter4, gym4)
membership5 = Membership.new(100, lifter5, gym5)
membership7 = Membership.new(700, lifter7, gym2)
membership8 = Membership.new(900, lifter8, gym3)
membership9 = Membership.new(800, lifter9, gym4)
membership10 = Membership.new(750, lifter10, gym5)

binding.pry

puts "Gains!"
