require './shelter'
require './animal'
require './client'

shelter = Shelter.new([], [])

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
  when "1"
    message = 'Here are the animals in the shelter'
    # Display all animals adopted and not adopted
  when "2"
    message = 'Here are the clients with adopted animals'
    # Display all clients adopted
  when "3"
    # create an animal and prompt for all instance variables needed
  when "4"
    # create a client and prompt for all instance variables needed
  when "5"
    # Think through necessary steps for adoption and to shovel an animal onto a client
  when "6"
    message += 'option 6'
    # Think through necessary steps to put animal back in available animals and delete client?
  else
      message += "I don't understand ..."
  end
  choice = menu message
end