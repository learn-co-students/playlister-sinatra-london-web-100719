# Add seed data here. Seed your database with `rake db:seed`

genre1 = Genre.create(name: "pop")
genre2 = Genre.create(name: "rock")


song1 = Song.create(name: "BlueSky")
song2 = Song.create(name: "Something Human")

artist1 = Artist.create(name: "Kanye")
artist2 = Artist.create(name: "Jay-Z")

artist1.songs << song1
artist1.songs << song2

genre1.songs << song1 
genre1.songs << song2