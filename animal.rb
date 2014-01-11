class Unit
  #basic properties, feel free to add more
  attr_accessor :building, :number, :sqft, :rent, :tenant

  # initialize instance variables
  def initialize(name,age,gender,species,num_toys=[])
    @name = name
    @age = age
    @gender = gender
    @species = species
    @num_toys = num_toys
  end

def adopted?
   @client.nil?
  end

end
