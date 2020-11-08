class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@count += 1
        @@genres << genre
        @@artists << artist
        
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end


    def self.genre_count
        genre_count = {}   
        @@genres.each do |genre|
            if genre_count[genre] ## Providing that the genre is already in the hash
                genre_count[genre] += 1
            else
                genre_count[genre] = 1 ## If the genre is not in the hash
            end
        end   
         genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist] ##Given if the artist is already in the hash
                artist_count[artist] += 1
            else
                artist_count[artist] = 1 ##For a new artist
            end
        end
        artist_count
    end


end
