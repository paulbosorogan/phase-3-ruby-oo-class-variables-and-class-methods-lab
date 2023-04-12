class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name= name
        @artist= artist
        @genre= genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count 
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        # hash = Hash.new(0)
        # @@genres.each do |genre|
        #     hash[genre] +=1
        #     "#{genre} = #{hash[genre]} "
        # end
        # hash
        @@genres.tally
    end
    
    def self.artist_count
        # hash_2 = Hash.new(0)
        # @@artists.each do |artist|
        #     hash_2[artist] +=1
        #     "#{artist} = #{hash_2[artist]} "
        # end
        # hash_2
        @@artists.tally
    end
end