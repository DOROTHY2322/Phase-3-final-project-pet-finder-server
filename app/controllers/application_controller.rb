require 'pry'
class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"

    #get request to access  all the pets
    #GET request to get all the pets
    get '/pets' do
        # get all the pets from the database
        pets = Pet.all
        # return a JSON response with an array of all the pet data
        pets.to_json

      end
      # Post request to enable a user to add a new pet
  post '/pets' do
    # Parse the data sent in the POST request
    pet_data = JSON.parse(request.body.read)
    name = pet_data['name']
    breed = pet_data['breed']
    age = pet_data['age']

    # Create a new pet record in the database
    pet = Pet.create(name: name, breed: breed, age: age)

    # Return the details of the newly created pet
    pet.to_json
  end
  #available pets
  get '/pets/available' do
    # Retrieve all available pets
    pets = Pet.where.not(user_id: nil)

    # Return the details of the available pets
    pets.to_json
  end
end