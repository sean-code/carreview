# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Faker::LoremFlickr.image(size: "200x150", search_terms: ['sports']) #=> "https://loremflickr.com/50/60/sports"

puts "Starting Seeding🌱 ... Please Wait"

carArray = [
    "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Q2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Q2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fENhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1542362567-b07e54358753?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fENhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/id/1307086567/photo/generic-modern-suv-car-in-concrete-garage.jpg?b=1&s=170667a&w=0&k=20&c=m2g-wU5m2tbqC7C_nWAgu7txHzeEnXKSFuby01V4dtI=",
    "https://images.unsplash.com/photo-1616634375264-2d2e17736a36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8QXV0b21vYmlsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fEF1dG9tb2JpbGVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1541038019982-5b38b55ddea8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8QXV0b21vYmlsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1596768336967-50e29bea4d68?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fEF1dG9tb2JpbGVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1669215420018-098507d14861?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8QmVueiUyMGFuZCUyMGplZXBzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1656468014942-fc3f9084b2ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fEJlbnolMjBhbmQlMjBqZWVwc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1525264626954-d57032a1ab1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Tmlzc2FuJTIwQ2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1531920327645-347e96a7f31e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fE5pc3NhbiUyMENhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1610915504025-d806f0041582?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fEZvcmQlMjBjYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fEZvcmQlMjBjYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1667297413691-6a07f6127ce0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fEJ1aWNrJTIwQ2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1459603677915-a62079ffd002?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8TGluY29sbiUyME1LUyUyMENhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
]

#Make 25 Random Cars
10.times do
    makeModel = Faker::Vehicle.make_and_model #=> "Honda CR-V"
    array = makeModel.split(" ")
    make = array[0]
    model = array[1]
    car = Car.create(price: Faker::Commerce.price(range: 30000..100000, as_string: true), 
            make: make, model: model, fuel_type: Faker::Vehicle.fuel_type, 
            transmission: Faker::Vehicle.transmission, mileage: Faker::Vehicle.mileage, 
            engine_size: Faker::Vehicle.engine_size, year: Faker::Vehicle.year, image: carArray.sample)

    car1 = Car.create(price: Faker::Commerce.price(range: 30000..100000, as_string: true), 
        make: make, model: model, fuel_type: Faker::Vehicle.fuel_type, 
        transmission: Faker::Vehicle.transmission, mileage: Faker::Vehicle.mileage, 
        engine_size: Faker::Vehicle.engine_size, year: Faker::Vehicle.year, image: carArray.sample)


    15.times do
        rev1 = Review.create(username: Faker::Twitter.screen_name, rating: Faker::Number.within(range: 2..5), comment: Faker::Lorem.paragraph(sentence_count: 3), car: car1)
    end
end


puts "🚙..Seeding completed successfully"
