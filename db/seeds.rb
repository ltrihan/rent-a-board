Booking.destroy_all
Board.destroy_all
User.destroy_all

puts "Creating some users, boards and bookings..."

users_data = [
  { email: "loic@rentaboard.com", first_name: "Loïc", last_name: "TRIHAN", password: "azerty"},
  { email: "kevin@rentaboard.com", first_name: "Kévin", last_name: "MORMIN", password: "azerty"},
  { email: "kurt@rentaboard.com", first_name: "Kurt", last_name: "PASCUAL", password: "azerty"},
  { email: "jojo@rentaboard.com", first_name: "Jonathan", last_name: "SERAFINI", password: "azerty"},
  { email: "charles@rentaboard.com", first_name: "Charles", last_name: "PERNET", password: "azerty"},
  { email: "bertrand@rentaboard.com", first_name: "Bertrand", last_name: "BUSSAC", password: "azerty"},
]

User.create!(users_data)
loic, kevin, kurt, jojo, charles, bertrand = User.first(6)

boards_data = [
  { category: "snow", photo: "", price: 20, user: charles },
  { category: "snow", photo: "", price: 20, user: charles },
  { category: "snow", photo: "", price: 20, user: bertrand },
  { category: "snow", photo: "", price: 20, user: kevin },
  { category: "snow", photo: "", price: 20, user: loic },
  { category: "wake", photo: "", price: 20, user: loic },
  { category: "wake", photo: "", price: 20, user: charles },
  { category: "wake", photo: "", price: 20, user: charles },
  { category: "wake", photo: "", price: 20, user: bertrand },
  { category: "wake", photo: "", price: 20, user: kurt },
]

Board.create!(boards_data)

puts "Done ! Let's test your app now..."
