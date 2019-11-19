puts "Destroying users..."
User.destroy_all

puts "Creating users..."

user1 = User.new(
  name: "Karim Soussi",
  email: "karim@lewagon.com",
  password: "123456",
)
user1.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qqtccckpyj555oibt676.jpg"
user1.save

user2 = User.new(
  name: "Felipe De Alba",
  email: "felipe@lewagon.com",
  password: "123456",
)
  user2.remote_photo_url = "https://avatars3.githubusercontent.com/u/54073875?v=4"
  user2.save

user3 = User.new(
  name: "Bitna Kim",
  email: "bitna@lewagon.com",
  password: "123456",
)
  user3.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zizjr3r1g3d2b1vlp1iy.jpg"
  user3.save

user4 = User.new(
  name: "Fanny Rojon",
  email: "fanny@lewagon.com",
  password: "123456",
)
  user4.remote_photo_url = "https://avatars2.githubusercontent.com/u/54022229?v=4"
  user4.save
puts "Users new."
