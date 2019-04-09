class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
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

  def self.artist_count
    artist_count = {}
    @@artists.each do |genre|
      if artist_count[genre]
        return artist_count[genre]+=1
      else
        return artist_count[genre]=1
      end
      artist_count
      end
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        return genre_count[genre]+=1
      else
        return genre_count[genre]=1
      end
      genre_count
      end
  end
end
