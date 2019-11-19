require_relative './seeds/user_seeds'
require_relative './seeds/group_seeds'
require_relative './seeds/event_seeds'

puts "Assiging users to groups..."

Group.all.each do |group|
  User.all.each do |user|
    group.users << user
  end
end
