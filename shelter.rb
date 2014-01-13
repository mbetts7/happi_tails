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
      @animals.map do |animal|
        animal.get_animal_info
      end
  end

  # Returns the total sqft rented.
  def display_clients
      #code
  end

  # Does?
  def animal_abandon
    #implement
  end

end