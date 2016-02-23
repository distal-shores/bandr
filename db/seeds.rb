User.create(
email: 'joe@test.com',
first_name: 'Joe', 
last_name: 'Ross', 
password: '123456', 
admin: false 
)

User.create(
email: 'steve@test.com',
first_name: 'Steve', 
last_name: 'Ross', 
password: '123456', 
admin: false 
)


20.times do User.create([{ 
 email: Faker::Internet.email, 
 first_name: Faker::Name.first_name, 
 last_name: Faker::Name.last_name, 
 password: Faker::Internet.password(6), 
 admin: false }]) 
end