class Tenant
  #basic properties, feel free to add more
  attr_accessor :name, :phone, :unit

  # initialize instance variables
  def initialize(name, phone, unit)
    @name = name
    @phone = phone
    @unit = unit
  end

  # Returns the tenant's contact info (name and phone) as one string
  def contact_info
    "#{@name}: #{@phone}"  # CAN YOU PUT PUTS HERE?
  end

end
