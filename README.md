# Phase-3-final-project-pet-finder-server
# Description

- This is a backend server for a petfinder app, it is built with ruby with sinatra.

# Getting Started

- In order to use this repo you need to have the following installed:

 - OS [either: Windows 10+, Linux or MacOS

- Ruby - 3.1.+

# Installation
- To use this repo on your machine requires some simple steps

# Alternative One

- Open a terminal / command line interface on your computer

- Clone the repo by using the following:

        -  git@github.com:DOROTHY2322/Phase-3-final-project-pet-finder-server.git

- Change directory to the repo folder:

        - cd Phase-3-final-project-pet-finder-server.git

- Open it in Visual Studio Code

         - code .

(Alternate Option) Open it in any editor of your choice.

# Alternative Two

- On the top right corner of this page there is a button labelled Fork.

- Click on that button to fork the repo to your own account.

- Take on the process in Alternative One above.

- Remember to replace your username when cloning.

        - git@github.com:DOROTHY2322/Phase-3-final-project-pet-finder-server.git

# Project SetUp

- This project is built with Sinatra Api application.
- To run and acces a server in our Terminal:
    
- Ensure you have a gemfile where all dependencies for or project require to run and install our dependencies

          - Bundle install

  - To run our server 

            - bundle exec rake server  

- To create migrations:

         - bundle exec rake db:create_migration NAME=create_users(name of the table)

 -   To run migrations 

         - bundle exec rake db:migrate

- To check on the status of the migrations

        - bundle exec rake db:migrate:status

![Screenshot from 2023-03-06 18-14-25](https://user-images.githubusercontent.com/117739286/223151251-216bb16b-ad6f-40cb-a9a6-0baf64d1a454.png)

- To seed data to the database 

        - bundle exec rake db:seed


  - This project has been rendered in render.com has a live status which we use the given url to fetch data  in our frontend:

            - https://dorothy-sinatra-petfinder.onrender.com   


- Front end Repository

        - https://github.com/DOROTHY2322/phase--3-petfinder-client

- To deploy our repo we need to change our environment from development to production

        - ENV['RACK_ENV'] ||= "production"

 - Our frontend has a frontend live page to access:
 

         -  https://phase-3-petfinder-client.vercel.app
          
# HTTP Request screenshots
 - 'get '/pets' request for all the pets 
 ![Screenshot from 2023-03-06 17-22-36](https://user-images.githubusercontent.com/117739286/223137559-188b6792-9c49-4296-baa5-647916c75317.png)

 - Post request to enable a user to add a new pet

    - post '/pets'

 ![Screenshot from 2023-03-06 17-29-11](https://user-images.githubusercontent.com/117739286/223138690-6a002747-e4da-4438-9647-295b87067e15.png)

 -  get '/pets/available'

 ![Screenshot from 2023-03-06 17-32-18](https://user-images.githubusercontent.com/117739286/223139954-8ad158b4-6f35-4958-b06b-fa0864cf4f63.png)

 - get '/pets/search'

 ![Screenshot from 2023-03-06 17-34-33](https://user-images.githubusercontent.com/117739286/223140491-b6e97705-3a73-4a70-b611-5d10c9f3c919.png)

 - patch '/pets/:id' 

 ![Screenshot from 2023-03-06 17-36-21](https://user-images.githubusercontent.com/117739286/223141045-c4583e94-8bc4-43a1-bf95-b7a859bbb29f.png)

-  delete '/pets/:id' to remove a pet

 ![Screenshot from 2023-03-06 17-38-30](https://user-images.githubusercontent.com/117739286/223141601-a7ce0e9b-3281-42ef-ba48-6063bdeaf2f1.png)

 - post '/signup'

 ![Screenshot from 2023-03-06 17-50-42](https://user-images.githubusercontent.com/117739286/223145082-4c208dc4-6021-4a35-a69d-ec64502703f8.png)




# Technologies used

- Ruby

# Authors

- This project was contributed to by:

- DOROTHY JEBET

# License
- MIT License

- Copyright (c) 2023 DOROTHY2322

