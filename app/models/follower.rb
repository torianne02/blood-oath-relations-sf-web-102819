class Follower
  attr_reader :name, :age, :life_motto
  attr_accessor :cults
  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @cults = []

    @@all << self 
  end 

  def join_cult(cult)
    cult.recruit_follower(self)
  end 

  def self.all 
    @@all 
  end 

  def self.of_a_certain_age(age)
    @@all.select { |follower| follower.age >= age }
  end 
end 