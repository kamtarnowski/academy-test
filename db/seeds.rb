User.destroy_all
City.destroy_all

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


City.create(name: 'Cracow', short_name: 'Cr')

num = 1
15.times do
  name = "Kamil#{num}"
  email = "example#{num}@gmail.com"
  age = 1 + num
  city_id = num
  password = 'password'
  User.create!(name: name, email: email, age: age, city_id: city_id, password: password, password_confirmation: password)
  num += 1
end

16.times do
  name = Faker::Address.city
  splited_name = name.split('')
  sh_name = splited_name.first + splited_name.last
  City.create(name: name, short_name: sh_name.capitalize)
end