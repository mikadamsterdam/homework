# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#index is for the array
#key is fir the hash

#List of artists
marley = Artist.create({name: "Bob",
  birth_date: Date.parse("1945-05-05")}
  )

rihanna = Artist.create({name: "Rihanna",
  birth_date: Date.parse("1988-05-16")
  })
mj = Artist.create({
name: "Mikael Jackson",
birth_date: Date.parse("1958-09-29")
})



#list of songs
i_shot_the_sheriff = Song.create({
  title: "I shot the sheriff",
  release_date: Date.parse("1970-05-05"),
  album: "Burnin", 
  artist_id: marley.id
  })

thriller = Song.create({
  title: "Thriller",
  release_date: Date.parse("1982-11-30"),
  album: "Thriller", artist_id: mj.id
  })

bad = Song.create({
  title: "Bad", release_date: Date.parse( "1987-08-31"), album: "Bad", 
  artist_id: mj.id 
  })

man_down = Song.create({ 
  title: "Man down", release_date: Date.parse( "2010-01-01"), 
  album: "Loud", 
  artist_id: rihanna.id 
  })

three_little_birds = Song.create({ title: "three little birds", 
  release_date: Date.parse( "1977-01-01"), 
  album: "Exodus", 
  artist_id: marley.id})
