class Preference < ActiveRecord::Base

  def toggle_sorting_songs
    value = self.song_sort_order
    toggle_sort(value)
  end

  def toggle_sorting_artists
    value = self.artist_sort_order
    toggle_sort(value)
  end

  def toggle_create_songs
    value = self.allow_create_songs
    !value
  end

  def toggle_create_artists
    value = self.allow_create_artists
    !value
  end

  def toggle_sort(value)
    value == "ASC" ? "DESC" : "ASC"
  end

end
