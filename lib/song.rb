require "pry"
class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre


    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
       @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
it_was_a_good_day = Song.new("It Was A Good Day", "Ice Cube", "rap")
dreaming_of_you = Song.new("Dreaming Of You", "Cigarettes After Sex", "Indie")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
binding.pry