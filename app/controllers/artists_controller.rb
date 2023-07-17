class ArtistsController < ApplicationController
  def search
    if params[:search].present?
      @artists = RSpotify::Artist.search(params[:search])
    end
  end
end
