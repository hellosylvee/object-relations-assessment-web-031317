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
