User.create(
email: 'joe@test.com',
first_name: 'Joe', 
last_name: 'Ross', 
password: '123456', 
postalcode: 'V6C 1T7',
admin: false 
)

User.create(
email: 'steve@test.com',
first_name: 'Steve', 
last_name: 'Ross', 
password: '123456', 
postalcode: 'V6C 1T7',
admin: false 
)


1.times do User.create([{ 
 email: Faker::Internet.email, 
 first_name: Faker::Name.first_name, 
 last_name: Faker::Name.last_name, 
 password: Faker::Internet.password(6), 
 postalcode: 'V6C 1T7',
 admin: false }]) 
end