20.times do User.create([{ 
 email: Faker::Internet.email, 
 firstname: Faker::Name.first_name, 
 lastname: Faker::Name.last_name, 
 password_digest: Faker::Internet.password(6), 
 admin: false }]) 
