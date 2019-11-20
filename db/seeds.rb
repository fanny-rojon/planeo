require_relative './seeds/user_seeds'
require_relative './seeds/group_seeds'
require_relative './seeds/event_seeds'

puts "Assigning users to groups..."

group1 = Group.find_by(name: "Le Wagon")
group2 = Group.find_by(name: "Sisters")
group3 = Group.find_by(name: "Girls Night")

fanny = User.find_by(name: "Fanny")
karim = User.find_by(name: "Karim")
felipe = User.find_by(name: "Felipe")
bitna = User.find_by(name: "Bitna")
caroline = User.find_by(name: "Caroline")
laure = User.find_by(name: "Laure")
delphine = User.find_by(name: "Delphine")
celine = User.find_by(name: "Celine")
bea = User.find_by(name: "Bea")
beatriz = User.find_by(name: "Beatriz")
isa = User.find_by(name: "Isa")
violetta = User.find_by(name: "Violetta")
anita = User.find_by(name: "Anita")

group1.users << [felipe, karim, bitna, fanny]

group2.users << [caroline, laure, delphine, celine, fanny]

group3.users << [beatriz, isa, violetta, bea, anita, fanny]









