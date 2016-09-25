class Artist < ActiveRecord::Base
  has_many :songs
  def self.display(preferences)
    if preferences
      Artist.all.order(name: preferences.artist_sort_order)
    else
      Artist.all
    end
  end
end
