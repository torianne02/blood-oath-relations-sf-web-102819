require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# cults
heavens_gate = Cult.new("Heaven's Gate", "San Diego", 1974, "The UFO Two")
manson_family = Cult.new("Manson Family", "San Francisco", 1967, "Hippie culture")
raelians = Cult.new("Raelians", "Geneva", 1974, "Movement for the Welcoming of the Elohim, Creators of Humanity")
aw_church = Cult.new("Alison Wonderland Church", "San Diego", 2018, "FMUOASL")

# followers 
tori = Follower.new("Tori", 26, "Help others")
kevin = Follower.new("Kevin", 31, "Make money")
allen = Follower.new("Allen", 28, "Aliens are among us")
andy = Follower.new("Andy", 18, "I'm a secret agent")
karen = Follower.new("Karen", 60, "I love everyone")
mike = Follower.new("Mike", 49, "Help others")
mindy = Follower.new("Mindy", 48, "Be positive")
daniel = Follower.new("Daniel", 23, "I refuse to stop progressing")
derek = Follower.new("Derek", 32, "Get swole")
annie = Follower.new("Annie", 33, "Love others")
chris = Follower.new("Chris", 22, "Be happy")
randy = Follower.new("Randy", 18, "I want all the wives")

# cult followings 
tori.join_cult(manson_family)
heavens_gate.recruit_follower(kevin)
allen.join_cult(manson_family)
raelians.recruit_follower(allen)
andy.join_cult(heavens_gate)
aw_church.recruit_follower(tori)
aw_church.recruit_follower(kevin)
andy.join_cult(aw_church)
andy.join_cult(raelians)
derek.join_cult(manson_family)
karen.join_cult(aw_church)
daniel.join_cult(manson_family)
raelians.recruit_follower(chris)
aw_church.recruit_follower(mindy)
aw_church.recruit_follower(mike)
heavens_gate.recruit_follower(randy)
annie.join_cult(aw_church)
tori.join_cult(heavens_gate)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
