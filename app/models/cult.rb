class Cult
  attr_reader :name, :location, :founding_year, :slogan
  attr_accessor :followers

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @followers = []

    @@all << self
  end

  def recruit_follower(person)
    BloodOath.new(DateTime.now, person, self)
    @followers << person
    person.cults << self
  end

  def cult_population
    @followers.length
  end 

  def self.all 
    @@all 
  end 

  def self.find_by_name(cult_name)
    @@all.find { |cult| cult.name == cult_name }
  end 

  def self.find_by_location(city)
    @@all.select { |cult| cult.location == city }
  end 

  def self.find_by_founding_year(year) 
    @@all.select { |cult| cult.founding_year == year }
  end 
end