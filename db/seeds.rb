User.create(
email: 'joe@test.com',
first_name: 'Joe', 
last_name: 'Ross', 
password: '123456', 
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
postalcode: 'V1L 4C5',
description: 'Number one Nickelback fan.',
admin: false 
)

User.create(
email: 'colesone@test.com',
first_name: 'Coleson', 
last_name: 'Luterbach', 
password: '123456', 
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
postalcode: 'V6B 5X6',
description: 'Really into music and web development.',
admin: false 
)

User.create(
email: 'sam@test.com',
first_name: 'Sam', 
last_name: 'Coll', 
password: '123456', 
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
postalcode: 'V6B 5X6',
description: 'Looking for a bass player to collaborate with.',
admin: false 
)

User.create(
email: 'jessica@test.com',
first_name: 'Jessica', 
last_name: 'Smith', 
password: '123456', 
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
postalcode: 'V6B 5X6',
description: 'I love making music and want to join a band!',
admin: false 
)

User.create(
email: 'kate@test.com',
first_name: 'Kate', 
last_name: 'Morrison', 
password: '123456', 
postalcode: 'L6R 1A1',
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
description: 'I have been playing different types of music for 20 years!',
admin: false 
)

User.create(
email: 'don@test.com',
first_name: 'Don', 
last_name: 'Draper', 
password: '123456', 
postalcode: ' T1X 0L3',
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
description: 'Marketer by day - musician by night.',
admin: false 
)

User.create(
email: 'anne@test.com',
first_name: 'Anne', 
last_name: 'Donaldson', 
password: '123456', 
postalcode: ' T1X 0L3',
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
description: 'Love learning new instruments. Hoping to start a band!',
admin: false 
)

User.create(
email: 'roger@test.com',
first_name: 'Roger', 
last_name: 'Moore', 
password: '123456', 
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
postalcode: ' T1X 0L3',
description: 'Secret agent by day - musician by night.',
admin: false 
)

User.create(
email: 'al@test.com',
first_name: 'Al', 
last_name: 'Winterson', 
password: '123456', 
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
postalcode: ' T1X 0L3',
description: 'Looking for bandmates! I love making music.',
admin: false 
)

User.create(
email: 'logan@test.com',
first_name: 'Logan', 
last_name: 'Bishop', 
password: '123456', 
demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
postalcode: 'T1X 0L3',
description: 'Looking to jam with other musicians!.',
admin: false 
)

# 1.times do User.create([{ 
#  email: Faker::Internet.email, 
#  first_name: Faker::Name.first_name, 
#  last_name: Faker::Name.last_name, 
#  password: Faker::Internet.password(6), 
#  postalcode: 'V6C 1T7',
#  description: 'alksjdkajsdlkasdjkasdj',
#  admin: false }]) 

#   ------- Genres ---------
Interest.create(
kind: 'genre', 
name: 'rock',
)

Interest.create(
kind: 'genre', 
name: 'hip hop',
)

Interest.create(
kind: 'genre', 
name: 'blues',
)

Interest.create(
kind: 'genre', 
name: 'folk',
)

Interest.create(
kind: 'genre', 
name: 'electronic',
)

Interest.create(
kind: 'genre', 
name: 'pop',
)

Interest.create(
kind: 'genre', 
name: 'country',
)

Interest.create(
kind: 'genre', 
name: 'rock',
)

Interest.create(
kind: 'genre', 
name: 'classical',
)

# --------- Subgenres --------
Interest.create(
kind: 'subgenre', 
name: 'metal',
)

Interest.create(
kind: 'subgenre', 
name: 'indie',
)

Interest.create(
kind: 'subgenre', 
name: 'alternative',
)

Interest.create(
kind: 'subgenre', 
name: 'punk',
)

Interest.create(
kind: 'subgenre', 
name: 'grunge',
)

Interest.create(
kind: 'subgenre', 
name: 'bebop',
)

Interest.create(
kind: 'subgenre', 
name: 'big band',
)

Interest.create(
kind: 'subgenre', 
name: 'rock',
)

Interest.create(
kind: 'subgenre', 
name: 'house',
)

Interest.create(
kind: 'subgenre', 
name: 'drum and bass',
)

Interest.create(
kind: 'subgenre', 
name: 'ambient',
)

Interest.create(
kind: 'subgenre', 
name: 'disco',
)

Interest.create(
kind: 'subgenre', 
name: 'avant-garde',
)

Interest.create(
kind: 'subgenre', 
name: 'baroque',
)

Interest.create(
kind: 'subgenre', 
name: 'renaissance',
)

Interest.create(
kind: 'subgenre', 
name: 'bluegrass',
)

Interest.create(
kind: 'subgenre', 
name: 'classic',
)

Interest.create(
kind: 'subgenre', 
name: 'cajun',
)

# -------------- Instruments ------------
Interest.create(
kind: 'instrument', 
name: 'electric guitar',
)

Interest.create(
kind: 'instrument', 
name: 'drums',
)

Interest.create(
kind: 'instrument', 
name: 'keyboard',
)

Interest.create(
kind: 'instrument', 
name: 'piano',
)

Interest.create(
kind: 'instrument', 
name: 'bass guitar',
)

Interest.create(
kind: 'instrument', 
name: 'vocals',
)

Interest.create(
kind: 'instrument', 
name: 'saxophone',
)

Interest.create(
kind: 'instrument', 
name: 'trumpet',
)

Interest.create(
kind: 'instrument', 
name: 'synthesizer',
)

Interest.create(
kind: 'instrument', 
name: 'violin',
)

Interest.create(
kind: 'instrument', 
name: 'banjo',
)

Interest.create(
kind: 'instrument', 
name: 'acoustic guitar',
)


<<<<<<< HEAD
1.times do User.create([{ 
 email: Faker::Internet.email, 
 first_name: Faker::Name.first_name, 
 last_name: Faker::Name.last_name, 
 password: Faker::Internet.password(6), 
 postalcode: 'V6C 1T7',
 description: 'alksjdkajsdlkasdjkasdj',
 demo: 'https://soundcloud.com/jtraxx/vitas-the-7th-element',
 admin: false }]) 
end
=======
>>>>>>> cd1265336f61112370c1222ecc77704a74c98000
