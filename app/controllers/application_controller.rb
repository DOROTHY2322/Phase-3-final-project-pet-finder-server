class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"
  
    #get request to access all the pets
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
  
    #Get request to view the added pets
    get '/pets' do
      # Retrieve all pets from the database
      pets = Pet.all
  
      # Return the details of all pets
      pets.to_json
    end
  
    #available pets
    get '/pets/available' do
      # Retrieve all available pets
      pets = Pet.where.not(user_id: nil)
  
      # Return the details of the available pets
      pets.to_json
    end
  
    #search with name or breed
    get '/pets/search' do
      # Retrieve the search query from the parameters
      query = params[:q]
    
      # Query the database for pets that match the search query
      pets = Pet.where('LOWER(name) LIKE ? OR LOWER(breed) LIKE ?', "%#{query.downcase}%", "%#{query.downcase}%")

    
      # Return the details of the matching pets
      pets.to_json
    end
    
  
    #update the pets
    put '/pets/:id' do
      # Retrieve the pet from the database
      pet = Pet.find_by(id: params[:id])
  
      # Update the details of the pet
      pet.update(params.slice(:name, :breed, :age, :description))
  
      # Return the updated details of the pet
      pet.to_json
    end
  
    #should be able to delete
    delete '/pets/:id' do
      # Retrieve the pet from the database
      pet = Pet.find_by(id: params[:id])
  
      # Remove the pet from the database
      pet.destroy
  
      # Return a success response indicating that the pet has been removed
      { message: 'The pet has been removed.' }.to_json
    end
  end
  