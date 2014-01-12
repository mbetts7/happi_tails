class Shelter
  attr_accessor :shelter_name, :animals, :clients

  # initialize instance variables
  def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals = [ ]
    @clients = [ ]
    
  end

  # Returns an array. Each element is a tenant's contact info
  def display_animals
    #code
  end

  # Returns the total sqft rented.
  def display_clients
      #code
  end

  # create an animal
  def create_animal
    # code
  end

  # Does?
  def animal_adopt
    #implement
  end

  # Does?
  def animal_abandon
    #implement
  end

end