class Client
  #basic properties, feel free to add more
  attr_accessor :client_name, :num_children, :client_age, :num_pets

  # initialize instance variables
  def initialize(client_name, num_children, client_age, num_pets)
    @client_name = client_name
    @num_children = num_children
    @client_age = client_age
    @num_pets = num_pets
  end

  def get_client_info
    "\n\nname: #{client_name}\n" + "age: #{client_age}\n" + "number of children: #{num_children}\n" + "number of pets: #{num_pets}"
  end

end
