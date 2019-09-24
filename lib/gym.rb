class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end

  def memberships 
    Membership.all.select do |membership|
      membership.gym == self 
    end
  end

  def lifters 
    memberships.map do |membership|
      membership.lifter.name
    end
  end

  def lift_total_combined 
    totes = 0
    memberships.each do |membership|
      totes += membership.lifter.lift_total
    end
    totes 
  end



end
