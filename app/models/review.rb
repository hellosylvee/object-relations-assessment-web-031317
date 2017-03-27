class Review
  attr_accessor :customers, :restaurants
  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end

  def customer
    self.name = customer.name
    customer.name
  end

  def restaurant
    self.name = restaurant.name
    restaurant.name
  end

end
