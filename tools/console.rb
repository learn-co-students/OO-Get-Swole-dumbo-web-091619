# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

    ricks = Gym.new("Rick's Gym")
    pinkys = Gym.new("Pinky's Gym")
    body_zone = Gym.new("The Body Zone")

    chad = Lifter.new("Chad", 250)
    suzie = Lifter.new("Susan", 350)
    howard = Lifter.new("Howard", 175)

    chad_ricks = Membership.new(80, ricks, chad)
    chad_pinkys = Membership.new(100, pinkys, chad)
    chad_body_zone = Membership.new(75, body_zone, chad)
    suzie_pinkys = Membership.new(100, pinkys, suzie)

    howard_ricks = howard.new_membership(80, ricks)

    puts "Gym.all works?"
    puts Gym.all.length == 3

    puts "Lifter.all works?"
    puts Lifter.all.length == 3

    puts "Membership.all works?"
    #puts Membership.all.length == 4
    puts Membership.all.length == 5

    puts "lifter#memberships works?"
    puts chad.memberships.length == 3

    puts "lifter#gyms works?"
    puts chad.gyms.length == 3

    puts "lifter#new_membership works?"
    puts howard.memberships.length == 1

    puts "lifter#total_gyms_cost works?"
    puts chad.total_gyms_cost == 255

    puts "Lifter.lift_total works?"
    puts Lifter.lift_total == 775

    puts "gym#memberships works?"
    puts pinkys.memberships.length == 2

    puts "gym#lifters works?"
    puts pinkys.lifters.length == 2

    puts "gym#lifters_names works?"
    puts pinkys.lifters_names == ["Chad", "Susan"]

    puts "gym#combined_lift_total works?"
    puts pinkys.combined_lift_total == 600

binding.pry

puts "Gains!"
