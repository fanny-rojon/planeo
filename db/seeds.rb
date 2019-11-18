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
  name: "Karim",
  email: "karim@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qqtccckpyj555oibt676.jpg")
user2 = User.create!(
  user_name: "Felipe De Alba",
  name: "Felipe",
  email: "felipe@lewagon.com",
  password: "123456",
  photo: "https://avatars3.githubusercontent.com/u/54073875?v=4")
user3 = User.create!(
  user_name: "Bitna Kim",
  name: "Bitna",
  email: "bitna@lewagon.com",
  password: "123456",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zizjr3r1g3d2b1vlp1iy.jpg")
user4 = User.create!(
  user_name: "Fanny Rojon",
  name: "Fanny",
  email: "fanny@lewagon.com",
  password: "123456",
  photo: "https://avatars2.githubusercontent.com/u/54022229?v=4")

group1 = Group.create!(
  name: "Le wagon",
  photo: "http://www.w3.org/1999/xlink"
  )

group2 = Group.create!(
  name: "Sisters",
  photo: "https://pmcdeadline2.files.wordpress.com/2016/12/stepsisters.png?w=595&h=383&crop=1"
  )

group3 = Group.create!(
  name: "Girls Night",
  photo: "https://www.thekingsferry.co.uk/sites/default/files/xmas-party-50-50%20%281%29.jpg"
  )
