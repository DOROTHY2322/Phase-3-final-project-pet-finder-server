
require 'pry'
class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"
    
    post '/login' do
      # Find the user by email
      user = User.find_by(email: params[:email])
  
      # Verify the password
      if user && user.authenticate(params[:password])
        # Generate a session token
        session_token = SecureRandom.hex
  
        # Update the user's session token in the database
        user.update(session_token: session_token)
  
        # Return the session token as a response
        { session_token: session_token }.to_json
      else
        halt 401, { message: 'Invalid email or password' }.to_json
      end
    end
  
    # User sign up route
    post '/signup' do
      # Create a new user from the request parameters
      user = User.create(
        email: params[:email],
        password: params[:password],
        name: params[:name]
      )
  
      # Return the new user's details as a response
      user.to_json
    end
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
      
      # create a new pet from the JSON data in the request
      pet = Pet.create(
        name: params[:name],
        breed: params[:breed],
        user_id: params[:user_id],
        img_url: params[:img_url]
      )
      pet.to_json

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
    patch '/pets/:id' do
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
  