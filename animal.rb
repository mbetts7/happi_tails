class Animal
  #basic properties, feel free to add more
  attr_accessor :animal_name, :animal_age, :gender, :species, :num_toys

  # initialize instance variables
  def initialize(animal_name,age,gender,species,num_toys)
    @animal_name = animal_name
    @animal_age = animal_age
    @gender = gender
    @species = species
    @num_toys = num_toys
  end

def adopted?
   @client.nil?
  end

end
