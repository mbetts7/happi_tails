class Animal
  #basic properties, feel free to add more
  attr_accessor :animal_name, :animal_age, :gender, :species, :num_toys

  # initialize instance variables
  def initialize(animal_name,animal_age,gender,species,num_toys)
    @animal_name = animal_name
    @animal_age = animal_age
    @gender = gender
    @species = species
    @num_toys = num_toys
  end

  def get_animal_info
    "\n\nname: #{animal_name}\n" + "species: #{species}\n" + "age: #{animal_age}\n" + "gender: #{gender}\n" + "number of toys: #{num_toys}"
  end

  def to_s
    "#{animal_name}: #{species}, #{gender}, #{animal_age}"
  end

def adopted?
   @client.nil?
  end

end
