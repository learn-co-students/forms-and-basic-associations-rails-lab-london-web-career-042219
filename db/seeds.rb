# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ID3 tag music genres are surprisingly specific.

genres = Hash[[
  "Blues",
  "Classic Rock",
  "Country",
  "Dance",
  "Disco",
  "Funk",
  "Grunge",
  "Hip-Hop",
  "Jazz",
  "Metal",
  "New Age",
  "Oldies",
  "Other",
  "Pop",
  "R&B",
  "Rap",
  "Reggae",
  "Rock",
  "Techno",
  "Industrial",
  "Alternative",
  "Ska",
  "Death Metal",
  "Pranks",
  "Soundtrack",
  "Euro-Techno",
  "Ambient",
  "Trip-Hop",
  "Vocal",
  "Jazz+Funk",
  "Fusion",
  "Trance",
  "Classical",
  "Instrumental",
  "Acid",
  "House",
  "Game",
  "Sound Clip",
  "Gospel",
  "Noise",
  "Alternative Rock",
  "Bass",
  "Soul",
  "Punk",
  "Space",
  "Meditative",
  "Instrumental Pop",
  "Instrumental Rock",
  "Ethnic",
  "Gothic",
  "Darkwave",
  "Techno-Industrial",
  "Electronic",
  "Pop-Folk",
  "Eurodance",
  "Dream",
  "Southern Rock",
  "Comedy",
  "Cult",
  "Gangsta",
  "Top 40",
  "Christian Rap",
  "Pop/Funk",
  "Jungle",
  "Native US",
  "Cabaret",
  "New Wave",
  "Psychadelic",
  "Rave",
  "Showtunes",
  "Trailer",
  "Lo-Fi",
  "Tribal",
  "Acid Punk",
  "Acid Jazz",
  "Polka",
  "Retro",
  "Musical",
  "Rock & Roll",
  "Hard Rock",
  "Folk",
  "Folk-Rock",
  "National Folk",
  "Swing",
  "Fast Fusion",
  "Bebob",
  "Latin",
  "Revival",
  "Celtic",
  "Bluegrass",
  "Avantgarde",
  "Gothic Rock",
  "Progressive Rock",
  "Psychedelic Rock",
  "Symphonic Rock",
  "Slow Rock",
  "Big Band",
  "Chorus",
  "Easy Listening",
  "Acoustic",
  "Humour",
  "Speech",
  "Chanson",
  "Opera",
  "Chamber Music",
  "Sonata",
  "Symphony",
  "Booty Bass",
  "Primus",
  "Porn Groove",
  "Satire",
  "Slow Jam",
  "Club",
  "Tango",
  "Samba",
  "Folklore",
  "Ballad",
  "Power Ballad",
  "Rhythmic Soul",
  "Freestyle",
  "Duet",
  "Punk Rock",
  "Drum Solo",
  "Acapella",
  "Euro-House",
  "Dance Hall",
  "Goa",
  "Drum & Bass",
  "Club - House",
  "Hardcore",
  "Terror",
  "Indie",
  "BritPop",
  "Negerpunk",
  "Polsk Punk",
  "Beat",
  "Christian Gangsta Rap",
  "Heavy Metal",
  "Black Metal",
  "Crossover",
  "Contemporary Christian",
  "Christian Rock",
  "Merengue",
  "Salsa",
  "Thrash Metal",
  "Anime",
  "JPop",
  "Synthpop"
].map { |genre| [genre, Genre.find_or_create_by(name: genre)] }]


Artist.create(name: "Taylor Swift")
Artist.create(name: "Dolly Parton")
Artist.create(name: "Russell Dickerson")
Artist.create(name: "Ashley McBryde")
Artist.create(name: "Twinnie")

Song.create(title: "Shake it off", artist_id: 1, genre_id: 1)
Song.create(title: "Love Story", artist_id: 1, genre_id: 2)
Song.create(title: "Jolene", artist_id: 2, genre_id: 3)
Song.create(title: "Coat of Many Colors", artist_id: 2, genre_id: 4)
Song.create(title: "Yours", artist_id: 3, genre_id: 5)
Song.create(title: "The Jacket", artist_id: 4, genre_id: 6)
Song.create(title: "Superhero", artist_id: 5, genre_id: 7)
Song.create(title: "Better When I'm Drunk", artist_id: 5, genre_id: 8)

Note.create(content: "blah blah blah blah blah blah blah", song_id: 1)
Note.create(content: "blah blah blah blah blah blah blah", song_id: 2)
Note.create(content: "blah blah blah blah blah blah blah", song_id: 3)
Note.create(content: "blah blah blah blah blah blah blah", song_id: 4)
Note.create(content: "blah blah blah blah blah blah blah", song_id: 5)
Note.create(content: "blah blah blah blah blah blah blah", song_id: 6)
Note.create(content: "blah blah blah blah blah blah blah", song_id: 7)
Note.create(content: "blah blah blah blah blah blah blah", song_id: 8)
