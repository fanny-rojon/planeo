require_relative './seeds/user_seeds'
require_relative './seeds/group_seeds'
require_relative './seeds/event_seeds'

puts "Assiging users to groups..."
User.all.each do |us|
  Group.first.users << us
end


Event.find(1).organizer = user1
Event.find(2).organizer = user2
Event.find(3).organizer = user3
