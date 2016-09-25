class Song < ActiveRecord::Base
  belongs_to :artist

  def self.display(preferences)
    if preferences
      Song.all.order(title: preferences.song_sort_order)
    else
      Song.all
    end
  end

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
