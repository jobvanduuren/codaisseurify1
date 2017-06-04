# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.delete_all
Artist.delete_all

artist1 = Artist.create!( {name: "Freddy Quinn", genre: "Schlager", image_url: "http://farm9.staticflickr.com/8334/8137535063_5271ff7c6b.jpg"})
artist2 = Artist.create!( {name: "Parliament", genre: "Funk", image_url: "https://www.premierguitar.com/ext/resources/images/content/2016-03/FEAT/P-Funk/Publicity-Photo-Parliament-Funkadelic_FEAT.jpg?1457383580"})
artist3 = Artist.create!( {name: "Kreator", genre: "Trash Metal", image_url: "https://fanart.tv/fanart/music/39822e8d-f24e-4f07-b51b-28b22e59fbdb/artistbackground/kreator-4f82f1487279e.jpg"})
artist4 = Artist.create!( {name: "George Beverly Shea", genre: "Gospel", image_url: "https://upload.wikimedia.org/wikipedia/en/6/68/George_Beverly_Shea%2C_gospel_singer_at_Billy_Graham%E2%80%99s_crusades.jpg"})


song1 = Song.create!( {name: "Getrennte Wege", album: "Nicht Eine Stunde Tut Mir Leid ", image_url: "http://streamd.hitparade.ch/cdimages/freddy_quinn-nicht_eine_stunde_tut_mir_leid_a.jpg", duration: 51, artist: artist1} )
song2 = Song.create!( {name: "Dr. Funkenstein", album: "The Clones of Dr. Funkenstein", image_url: "https://img.discogs.com/OIEyt4LnNyBtvKXQ5w7NwMuiLi8=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-70285-1248015174.jpeg.jpg", duration: 346, artist: artist2} )
song3 = Song.create!( {name: "Corpses of Liberty", album: "Hordes of Chaos", image_url: "https://upload.wikimedia.org/wikipedia/en/6/6b/Kreator-hoc.jpg", duration: 55, artist: artist3} )
song4 = Song.create!( {name: "The Longer I Serve Him", album: "I'd Rather Have Jesus", image_url: "http://oldies.scdn5.secure.raxcdn.com/i/boxart/w170/07/01/604988070125.jpg", duration: 678, artist: artist4} )
