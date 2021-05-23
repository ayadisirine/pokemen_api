# README


# pokemen_api
In this project ,I Created Rest Api Pokemen. and the link for our differents Apis are below and you can test it in Postman here is example of how u can access our api

For Pokemen to retrive, for all Pokemen  you use GET
http://localhost:3000/pokemen/id and for Changing ITS type for exemple you will use PUT and in Body => raw change on of pokemen type ("Grass" or "Fire" ..") in Json format like this: { "type1" : "Fire" }
If the results input is Success, use GET to see the resluts of the changed type.
I would like to add pagination to a specific route so amount of data and cpu time will be reduce on both backend and frontend , So I add gem 'kaminari' in gemfile and after I do bundle install 
and we choose page in params
To create the new pokemen  use POST 
to delete the pokemen use delete
to retrieve the information use the same link /(the id in numbers of Pokemen you want) for example here we want one so we use http://localhost:3000/pokemen/3 to change the information you do the same as abose USE PUT and choose in 




