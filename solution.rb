# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name, :restaurant, :content

  @@all_names = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all_names << full_name
    @@all_names
  end

  def self.find_by_name(name)
    @@all_names.find {|e| e == name }
  end

  def self.find_all_by_first_name(name)
    @@all_names.collect {|e| e == @first_name }
  end

  def self.all_names
    @@names
  end

  def add_review(restaurant, content)

  end

  def create_review(review)
    review = Customer.new(review)
    self.review = self
  end

  def create_content(content)
    content = Customer.new(content)
    self.content = self
  end
end

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
