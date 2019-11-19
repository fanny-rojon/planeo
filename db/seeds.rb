require_relative './seeds/user_seeds'
require_relative './seeds/group_seeds'
require_relative './seeds/event_seeds'

User.all.each do |us|
  Group.first.users << us
end

