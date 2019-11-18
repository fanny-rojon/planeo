# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.destroy_all
User.destroy_all

user1 = User.create!(
  user_name: "Karim Soussi",
  email: "karim@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qqtccckpyj555oibt676.jpg")
user2 = User.create!(
  user_name: "Felipe De Alba",
  email: "felipe@lewagon.com",
  password: "123456",
  photo: "https://avatars3.githubusercontent.com/u/54073875?v=4")
user3 = User.create!(
  user_name: "Bitna Kim",
  email: "bitna@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zizjr3r1g3d2b1vlp1iy.jpg")
user4 = User.create!(
  user_name: "Fanny Rojon",
  email: "fanny@lewagon.com",
  password: "123456",
  photo: "https://avatars2.githubusercontent.com/u/54022229?v=4")

group1 = Group.create!(
  name: "Le wagon",
  )

group2 = Group.create!(
  name: "Sisters",
  )

group3 = Group.create!(
  name: "Girls Night",
  )
