class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preference.all
  end

  def show
    @preference = Preference.all.last
  end

  def edit
    @preference = Preference.find_by_id(params[:id])
  end

  def update
    @preference = Preference.find_by_id(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private
    def preference_params
      params.require(:preference).permit(:allow_create_artists, :artist_sort_order, :allow_create_songs, :song_sort_order)
    end
end
