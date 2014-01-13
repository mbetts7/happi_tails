class Shelter
  attr_accessor :shelter_name, :animals, :clients

  # initialize instance variables
  def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals = []
    @clients = []
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

  # Method for removing animal from database when they are adopted
  def rm_animal(name)
    @animals.each do |animal|
      if animal.animal_name.capitalize == name.capitalize
        return @animals.delete animal
      end
    end
  end

  # Method for accessing client info
  def access_client(name)
    @clients.each do |client|
      return client if client.client_name.capitalize == name.capitalize
    end
  end

  def has_animal?(name)
    !@animals.select {|animal| animal.animal_name.capitalize == name.capitalize}.empty?
  end

  def has_client?(name)
    !@clients.select {|client| client.client_name.capitalize == name.capitalize}.empty?
  end

  def add_animal(animal)
    @animals << animal
  end

end