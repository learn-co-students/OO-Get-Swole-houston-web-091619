class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all 
    @@all 
  end

  def memberships 
    Membership.all.select do |membership|
      membership.lifter == self 
    end
  end

  def gyms 
    memberships.map do |membership|
      membership.gym.name 
    end
  end

  def self.avg_lift_total 
    total = 0
    self.all.each do |lifter|
      total += lifter.lift_total
    end
  total/self.all.length
  end

  def total_cost_gym_membership 
    total_cost = 0 
    memberships.each do |membership| 
      total_cost += membership.cost 
    end
    total_cost
  end

  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end

end
