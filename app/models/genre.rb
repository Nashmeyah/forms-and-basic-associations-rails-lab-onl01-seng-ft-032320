class Genre < ActiveRecord::Base
  validates :name, presence: true
  has_many :songs

  def song_genre_ids=(ids)
    ids.each do |id|
      song = Song.find(id)
      self.songs << song
    end
  end
end
