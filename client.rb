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

  # Returns the tenant's contact info (name and phone) as one string
  def contact_info
    "#{@name}: #{@phone}"  # CAN YOU PUT PUTS HERE?
  end

end
