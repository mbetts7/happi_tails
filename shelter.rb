class Shelter
  attr_accessor :shelter_name, :animals, :clients

  # initialize instance variables
  def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals = [ ]
    @clients = [ ]
    
  end

  # Displays list of animals and information about them.
  def display_animals
      @animals.map do |animal|
        animal.get_animal_info
      end
  end

  # Returns list of clients and information about them.
  def display_clients
      @clients.map do |client|
        client.get_client_info
      end
  end

  # Does?
  def animal_abandon
    #implement
  end

end