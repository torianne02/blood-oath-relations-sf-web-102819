class BloodOath
  attr_reader :date, :follower, :cult
  @@all = []

  def initialize(date, follower, cult)
    @date = date.strftime('%Y-%m-%d')
    @follower = follower
    @cult = cult

    @@all << self
  end 

  def self.all
    @@all
  end 
end 