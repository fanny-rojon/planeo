require_relative './seeds/user_seeds'
require_relative './seeds/group_seeds'
require_relative './seeds/event_seeds'

puts "Assiging users to groups..."
User.all.each do |us|
  Group.find(1).users << us
end

