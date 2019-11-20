puts "Destroying users..."

User.destroy_all

puts "Creating users..."

# Le Wagon Users

karim = User.new(
  name: "Karim",
  email: "karim@lewagon.com",
  password: "123456",
)
karim.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qqtccckpyj555oibt676.jpg"
karim.save

felipe = User.new(
  name: "Felipe",
  email: "felipe@lewagon.com",
  password: "123456",
)
  felipe.remote_photo_url = "https://avatars3.githubusercontent.com/u/54073875?v=4"
  felipe.save

bitna = User.new(
  name: "Bitna",
  email: "bitna@lewagon.com",
  password: "123456",
)
  bitna.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zizjr3r1g3d2b1vlp1iy.jpg"
  bitna.save

fanny = User.new(
  name: "Fanny",
  email: "fanny@lewagon.com",
  password: "123456",
)
  fanny.remote_photo_url = "https://avatars2.githubusercontent.com/u/54022229?v=4"
  fanny.save

carol = User.new(
  name: "Carol",
  email: "carol@lewagon.com",
  password: "123456",
)
  carol.remote_photo_url = "https://avatars2.githubusercontent.com/u/55203965?v=4"
  carol.save

ana = User.new(
  name: "Ana",
  email: "ana@lewagon.com",
  password: "123456",
)
  ana.remote_photo_url = "https://avatars2.githubusercontent.com/u/2753447?v=4"
  ana.save

belen = User.new(
  name: "Belen",
  email: "belen@lewagon.com",
  password: "123456",
)
  belen.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/lnxfmia8mpojopc81tpv.jpg"
  belen.save

gabriela = User.new(
  name: "Gabriela",
  email: "gabriela@lewagon.com",
  password: "123456",
)
  gabriela.remote_photo_url = "https://avatars1.githubusercontent.com/u/49677730?v=4"
  gabriela.save

herve = User.new(
  name: "Herve",
  email: "herve@lewagon.com",
  password: "123456",
)
  herve.remote_photo_url = "https://avatars1.githubusercontent.com/u/49677730?v=4"
  herve.save

maja = User.new(
  name: "Maja",
  email: "maja@lewagon.com",
  password: "123456",
)
  maja.remote_photo_url = "https://avatars1.githubusercontent.com/u/49677730?v=4"
  maja.save

javier = User.new(
  name: "Javier",
  email: "javier@lewagon.com",
  password: "123456",
)
  javier.remote_photo_url = "https://avatars1.githubusercontent.com/u/49677730?v=4"
  javier.save

niklas = User.new(
  name: "Niklas",
  email: "niklas@lewagon.com",
  password: "123456",
)
  niklas.remote_photo_url = "https://avatars1.githubusercontent.com/u/49677730?v=4"
  niklas.save

gonzalo = User.new(
  name: "Gonzalo",
  email: "gonzalo@lewagon.com",
  password: "123456",
)
  gonzalo.remote_photo_url = "https://avatars1.githubusercontent.com/u/49677730?v=4"
  gonzalo.save


# Sisters Users

caroline = User.new(
  name: "Caroline",
  email: "caroline@lewagon.com",
  password: "123456",
)
  caroline.remote_photo_url = "https://scontent-mad1-1.xx.fbcdn.net/v/t1.0-9/228112_1048522785369_7269_n.jpg?_nc_cat=105&_nc_oc=AQn1QE0bE-wseQlPY8oaiDcw6G-Y3BC-vK39gquBG8aUr32bLawW3eOSSIepQImyn7w&_nc_ht=scontent-mad1-1.xx&oh=dbbb178689b95c8ab6b658694b4ed8d2&oe=5E558519"
  caroline.save

laure = User.new(
  name: "Laure",
  email: "laure@lewagon.com",
  password: "123456",
)
  laure.remote_photo_url = "https://scontent-mad1-1.xx.fbcdn.net/v/t31.0-8/s960x960/1502743_250804815085957_1536499123_o.jpg?_nc_cat=111&_nc_oc=AQmalfPJgOKWsbID8StGBgxYb7PXR34o_9KBBSYzoOFm88ErtvjlmoijYTgNFj6r2S4&_nc_ht=scontent-mad1-1.xx&oh=98a16993b8f866258c2387c970ca9bda&oe=5E821037"
  laure.save

delphine = User.new(
  name: "Delphine",
  email: "delphine@lewagon.com",
  password: "123456",
)
  delphine.remote_photo_url = "https://scontent-mad1-1.xx.fbcdn.net/v/t1.0-9/224337_1048528345508_6306_n.jpg?_nc_cat=110&_nc_oc=AQm-E5aksa9DVgNgTfiF0v8Bwel8CAvp4MHW_F5s9rubiGJHNnWothtr5bLhcDkRF8A&_nc_ht=scontent-mad1-1.xx&oh=3b1777879813cdd277d29ea0b86375f7&oe=5E898A04"
  delphine.save

celine = User.new(
  name: "Celine",
  email: "celine@lewagon.com",
  password: "123456",
)
  celine.remote_photo_url = "https://scontent-mad1-1.xx.fbcdn.net/v/t1.0-0/p640x640/60355863_581805952342379_455130528941604864_o.jpg?_nc_cat=107&_nc_oc=AQkQoZtVHRoC64l29rrbrqsFfbyfL50rDQs0C8Aez2VVmBYTjHW17wE8_Y4TcZKP4Hs&_nc_ht=scontent-mad1-1.xx&oh=2326f997e28b911702a5fb0aa807cd5b&oe=5E88D6E2"
  celine.save

# Girls Night Users

violetta = User.new(
  name: "Violetta",
  email: "violetta@lewagon.com",
  password: "123456",
)
  violetta.remote_photo_url = "https://pps.whatsapp.net/v/t61.24694-24/68753985_2390818014369503_2815862301075177472_n.jpg?oe=5DD90B0A&oh=1a32ee27e855d1345c32f9262f791b28&t=l&u=34605027047@c.us&i=1568571052"
  violetta.save

beatriz = User.new(
  name: "Beatriz",
  email: "beatriz@lewagon.com",
  password: "123456",
)
  beatriz.remote_photo_url = "https://pps.whatsapp.net/v/t61.24694-24/62553972_873263513047805_2293700767300714496_n.jpg?oe=5DD90C2C&oh=78d7b58ed2c0685fef72ac8a3a7c381d&t=l&u=34646138005@c.us&i=1563273692"
  beatriz.save

isa = User.new(
  name: "Isa",
  email: "isa@lewagon.com",
  password: "123456",
)
  isa.remote_photo_url = "https://pps.whatsapp.net/v/t61.24694-24/70162519_728463174335874_7986757096672853308_n.jpg?oe=5DD90C28&oh=57de67e6a27bfc2fb1a1779a38fac68b&t=l&u=34676053544@c.us&i=1573549882"
  isa.save

bea = User.new(
  name: "Bea",
  email: "bea@lewagon.com",
  password: "123456",
)
  bea.remote_photo_url = "https://pps.whatsapp.net/v/t61.24694-24/70162519_728463174335874_7986757096672853308_n.jpg?oe=5DD90C28&oh=57de67e6a27bfc2fb1a1779a38fac68b&t=l&u=34676053544@c.us&i=1573549882"
  bea.save

anita = User.new(
  name: "Anita",
  email: "anita@lewagon.com",
  password: "123456",
)
  anita.remote_photo_url = "https://pps.whatsapp.net/v/t61.24694-24/64219745_387115768821815_7278587961640222720_n.jpg?oe=5DD90CA7&oh=c98da6edaf882fa210dd1a0d50347da6&t=l&u=34619175370@c.us&i=1563096055"
  anita.save

puts "Users created."


















