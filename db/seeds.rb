10.times do
  Client.create(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number)
end
