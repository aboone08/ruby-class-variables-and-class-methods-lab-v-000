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

  def count
    self.@@count
  end

  def genres
    @@genres.uniq!
  end

  def artists
    @@artists.uniq!
  end

  def artist_count

  end

  def genre_count
    #genre_count = {genre=>count}
  end



end
