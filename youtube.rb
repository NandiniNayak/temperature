
class Song
 attr_accessor :name, :album, :length
 def initialize(name, album, length)
   @name = name
   @album = album
   @length = length
 end

 def openInYoutube(artist, song)

# https://www.youtube.com/results?search_query=red+hot+chilli+peppers
url = "https://www.youtube.com/results?search_query=#{artist.gsub(" ", "+")}+#{song.gsub(" ", "+")}"
puts url
system "open #{url}"
 end
end

class Artist
 attr_accessor :name, :nationality, :genre, :song
 def initialize(name, nationality, genre, song)
   @name = name
   @nationality = nationality
   @genre = genre
   @song = song
 end
end

artist = Artist.new("Anderson Paak", "American", "hip-hop", Song.new(
"The Bird", "Malibu", "4.08"))

artist.song.openInYoutube(artist.name, artist.song.name)
