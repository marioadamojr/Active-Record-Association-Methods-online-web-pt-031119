class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
#more complicated way
    # artist_count = []
    # self.songs.each do |s|
    #   artist_count << s.artist
    # end
    # artist_count.uniq.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artist_names = []
    self.songs.each do |s|
      artist_names << s.artist.name
    end
    artist_names.uniq
  end
end
