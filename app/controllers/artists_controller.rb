class ArtistsController < ApplicationController

  def index
    @artists= Artist.all
  end

  def show
    @artist= Artist.find(params[:id])
    @recommended_artists = RSpotify::Recommendations.generate(seed_artists: [@artist.spotify_id])
  end

  def search
    if params[:search].present?
      @artists = RSpotify::Artist.search(params[:search])
    end
  end

  def create
    @artist = Artist.new(artist_params)
    respond_to do |format|
      if @artist.save
        format.html { redirect_to artists_path, notice: 'Artist was successfully created.' }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def artist_params
    params.permit(:artist_name, :artist_image, :spotify_id)
  end
end
