
5.times do
  Contact.create({
      name: Faker::Name.name,
      surname: Faker::Name.last_name,
      phone: Faker::PhoneNumber.phone_number,
      mail: Faker::Internet.email,
      address: Faker::Address.street_address
    })
end


5.times do
  Addinformation.create({
      art: Faker::Artist.name,
      movie: Faker::Movie.quote,
      music: Faker::Artist.name
    })
end
