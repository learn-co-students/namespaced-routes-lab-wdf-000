class Admin::PreferencesController < ApplicationController
  def index
	@song_count = Song.count
  end
end