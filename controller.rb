require './shelter'
require './animal'
require './client'

shelter = Shelter.new("Happi Tails")

def menu message
  puts `clear`
  puts "*** happi_tails v1.0 ***\n\n"

  puts "#{message}\n\n" unless message.empty?

  puts '1 : Display all animals'
  puts '2 : Display all clients'
  puts '3 : Create an animal'
  puts '4 : Create a client'
  puts '5 : Facilitate client adopts an animal'
  puts '6 : Facilitate client puts an animal up for adoption'
  puts "q : Quit\n\n"
  print '--> '
  gets.chomp
end

message = ""
choice = menu message #choice will equal the "menu message" defined above method
while choice != 'q'
  message = ""
  case choice
  when "1" # Display all animals
    message = 'Here are the animals in the shelter:'
    message += "#{shelter.display_animals.join}\n"
  when "2" # Display all clients
    message = 'Here are the clients:'
    message += "#{shelter.display_clients.join}\n"
  when "3" # Create an animal
    puts "Create an animal. Please enter the following information:"
    print "Name: "; animal_name = gets.chomp.capitalize
    print "Age: "; animal_age = gets.to_i
    print "Gender: "; gender = gets.chomp.capitalize
    print "Species: "; species = gets.chomp.capitalize
    print "How many toys does your pet have? "; num_toys = gets.to_i

    shelter.animals << Animal.new(animal_name,animal_age,gender,species,num_toys)
    message = "Added animal #{shelter.animals.last.animal_name}"
  when "4" # Create a client
    puts "Create a new client. Please enter the following information:"
    print "Name: "; client_name = gets.chomp.capitalize
    print "Age: "; client_age = gets.to_i
    print "Number of children: "; num_children = gets.to_i
    print "How many pets do you have? "; num_pets = gets.to_i

    shelter.clients << Client.new(client_name,client_age,num_children,num_pets)
    message = "Added client #{shelter.clients.last.client_name}"
  when "5" # Facilitate client adopts an animal
    puts "\nAvailable clients to choose from:"
    print shelter.display_clients.join
    print "\nWhich client wants to adopt a pet? "
    client_name = gets.chomp
    puts "\nAvailable animals to choose from:"
    puts shelter.display_animals
    print "\nWhich animal does #{client_name} want to adopt? "
    animal_name = gets.chomp
    animal_condition = ""
    shelter.clients.each do |client|
      if client.client_name.capitalize == client_name.capitalize
        animal_condition = shelter.has_animal?(animal_name)
        client.adopt_animal(shelter.rm_animal(animal_name)) if shelter.has_animal?(animal_name)
      end
    end
      if animal_condition && shelter.has_client?(client_name)
        puts "\nAdoption successful"
        message += "#{client_name.capitalize} adopted #{animal_name.capitalize}"
      # Promp for client, and which animal
      else
        message = "ERROR!!! Not a valid entry."
      end
    when "6" # Facilitate client puts an animal up for adoption
      puts "\nCurrent clients with animals"
      print shelter.display_clients.join
      puts "\nWhich client wants to put their pet up for adoption?"
      client_name = gets.chomp
      pet_condition = nil
      shelter.clients.each do |client|
        if client.client_name.capitalize == client_name.capitalize
          puts "\nClient's pets"
          puts client.pets  # How to get pet name on this line???... this works, but not clean.... puts client.get_client_info
          print "\nWhich pet will be put up for adoption? "
          pet_name = gets.chomp
          pet_condition = client.has_pet?(pet_name)
          shelter.add_animal(client.put_up_for_adoption(pet_name)) if client.has_pet?(pet_name)
        end
      end
        if shelter.has_client?(client_name) && pet_condition
          puts "\nAnimal put up for adoption successful"
          message = "#{client_name} put #{animal_name} up for adoption."
        else
          message = "ERROR!!! Not a valid entry."
        end
  else
      message += "I don't understand ..."
  end
  choice = menu message
end
