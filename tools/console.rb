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

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
