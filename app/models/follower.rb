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

  def my_cults_slogans 
    @cults.map { |cult| puts cult.slogan }
  end 

  def self.most_active
    @@all.max_by { |follower| follower.cults.length }
  end 

  def self.top_ten
    @@all.sort { |follower| follower.cults.length }[0..9].map { |follower| follower.name }
  end 

  def self.all 
    @@all 
  end 

  def self.of_a_certain_age(age)
    @@all.select { |follower| follower.age >= age }
  end 
end 