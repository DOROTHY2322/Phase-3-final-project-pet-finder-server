puts "🌱 Seeding data..."

# Create some users
User.create(name: "Dorothy", email: "dororthy@example.com", password: "password")
User.create(name: "Don", email: "don@example.com", password: "password")
User.create(name: "Derrick", email: "derrick@example.com", password: "password")
User.create(name: "Emily", email: "emily@example.com", password: "password")
User.create(name: "Mike", email: "mike@example.com", password: "password")

# Create some pets
Pet.create([
  {
    name: "Fido",
    breed: "Golden Retriever",
    age: 3,
    user_id: 1,
    img_url: "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg"
  },
  {
    name: "Max",
    breed: "German Shepherd",
    age: 10,
    user_id: 2,
    img_url: "https://images.pexels.com/photos/333083/pexels-photo-333083.jpeg"
  },
  {
    name: "Buddy",
    breed: "Labrador Retriever",
    age: 3,
    user_id: 1,
    img_url: "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg"
  },
  {
    name: "Luna",
    breed: "Siberian Husky",
    age: 1,
    user_id: 3,
    img_url: "https://images.pexels.com/photos/3715587/pexels-photo-3715587.jpeg"
  },
  {
    name: "Bailey",
    breed: "Beagle",
    age: 5,
    user_id: 4,
    img_url: "https://images.pexels.com/photos/347683/pexels-photo-347683.jpeg"
  },
  {
    name: "Charlie",
    breed: "Poodle",
    age: 2,
    user_id: 5,
    img_url: "https://images.pexels.com/photos/1458916/pexels-photo-1458916.jpeg"
  },
  {
    name: "Daisy",
    breed: "Boxer",
    age: 5,
    user_id: 2,
    img_url: "https://images.pexels.com/photos/605496/pexels-photo-605496.jpeg"
  },
  {
    name: "Rocky",
    breed: "Bulldog",
    age: 4,
    user_id: 4,
    img_url: "https://images.pexels.com/photos/160846/french-bulldog-summer-smile-joy-160846.jpeg"
  },
  {
    name: "Lucy",
    breed: "Shih Tzu",
    age: 3,
    user_id: 5,
    img_url: "https://images.pexels.com/photos/2623968/pexels-photo-2623968.jpeg"
  },
  {
    name: "Cooper",
    breed: "Dachshund",
    age: 5,
    user_id: 3,
    img_url: "https://images.pexels.com/photos/914635/pexels-photo-914635.jpeg"
  },
  {
    name: "Molly",
    breed: "Chihuahua",
    age: 7,
    user_id: 4,
    img_url: "https://images.pexels.com/photos/434046/pexels-photo-434046.jpeg"
  }
])

puts "✅ Done seeding!"
