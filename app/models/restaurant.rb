class Restaurant
  attr_accessor :name, :review, :customers

  @@all_restaurants = []

  def initialize(name)
    @name = name
    @@all_restaurants << name
    @reviews = []
  end

  def self.all(name)
    @@all_restaurants
  end

  def add_review(review)
    self.review = review
  end

  def reviews
    @reviews << add_review(piece)
  end

  def customers
    self.reviews.customer
  end
end
