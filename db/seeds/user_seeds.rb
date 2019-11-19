puts "Destroying users"
User.destroy_all

puts "Creating users"

user1 = User.create!(
  name: "Karim Soussi",
  email: "karim@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qqtccckpyj555oibt676.jpg"
)
user2 = User.create!(
  name: "Felipe De Alba",
  email: "felipe@lewagon.com",
  password: "123456",
  photo: "https://avatars3.githubusercontent.com/u/54073875?v=4"
)
user3 = User.create!(
  name: "Bitna Kim",
  email: "bitna@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zizjr3r1g3d2b1vlp1iy.jpg"
)
user4 = User.create!(
  name: "Fanny Rojon",
  email: "fanny@lewagon.com",
  password: "123456",
  photo: "https://avatars2.githubusercontent.com/u/54022229?v=4"
)
puts "Users created"
