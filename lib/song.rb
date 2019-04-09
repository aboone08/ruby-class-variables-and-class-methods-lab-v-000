class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+1
    genre >> @@genres
    artist >> @@artists
  end

  def count
    @@count
  end

  def genres
    @@genres
  end

  def artists
    @@artists
  end

  def artist_count

  end

  def genre_count
    genre_count = {genre=>count}
  end



end
