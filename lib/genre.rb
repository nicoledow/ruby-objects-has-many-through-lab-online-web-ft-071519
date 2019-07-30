class Genre
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    songs = Song.all.select {|song| song.genre == self}
    songs.collect {|song| song.artist}
  end
  
  
end