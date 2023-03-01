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
     
end