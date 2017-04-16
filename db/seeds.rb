10.times do
  Client.create(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number)
end

10.times do
  color = Color.new
  color.name = Faker::Color.color_name
  color.code = Faker::Color.hex_color
  color.save
end

30.times do

  color = Color.order("RANDOM()").first

  dress = Dress.new
  dress.name = Faker::Hipster.words([2,3].sample).join(" ")
  dress.remote_photo_url = 'http://lorempixel.com/200/250/'
  dress.color = color
  dress.rental_price = 0
  dress.sale_price = 0
  dress.save
end
