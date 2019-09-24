# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("LA Fitness")
g2 = Gym.new("YMCA")
g3 = Gym.new("Gold's Gym")
g4 = Gym.new("Planet Fitness")
g5 = Gym.new("Lifetime")

l1 = Lifter.new("Brad", 325)
l2 = Lifter.new("Chad", 300)
l3 = Lifter.new("Mikey", 350)
l4 = Lifter.new("Corey", 270)
l5 = Lifter.new("Chase", 380)

m1 = Membership.new(50, g1, l2)
m2 = Membership.new(35, g2, l1)
m3 = Membership.new(60, g3, l2)
m4 = Membership.new(15, g4, l3)
m5 = Membership.new(50, g1, l4)
m6 = Membership.new(80, g5, l5)
m7 = Membership.new(15, g4, l4)

binding.pry


puts "Gains!"
