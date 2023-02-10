# README ruby_3_Music_box

this app is api-only app on ROR, the task was to create HTML page and use ajax requests for recieving data from this api. Theme was music and i had to create database of 4 tables in my case: Songs, Albums, Artists, Playlists. But i wanted to try many-to-many relation, so i used assotiation has_and_belongs_to_many and created one more connective table. Api is deployed on heroku. 
visit  https://adammui.github.io/ruby_3_Music_box_page/  for simple html page that uses this app. 
all data on the page ^ obtained from postgre db and requested with jQuery.ajax().
