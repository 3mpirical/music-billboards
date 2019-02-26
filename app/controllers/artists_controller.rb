class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :edit, :update, :destroy]
  
  def index
    @artists = current_user.artists.all()
  end

  def show
  end

  def edit
  end

  def new
    @artist = Artist.new()
  end

  def create
    @artist = current_user.artists.new(artist_params())

    if(@artist.save())
      redirect_to(artists_path)
    else
      render(:new)
    end
  end

  def update
    if(@artist.update(artist_params()))
      redirect_to(artist_path(params[:id]))
    else
      render(:new)
    end
    
  end

  def destroy
    @artist.destroy()
    redirect_to(artists_path)
  end

  private
    def get_artist
      return @artist = current_user.artists.find(params[:id])
    end

    def artist_params
      return params.require(:artist).permit(:name, :avatar, :started)
    end

end
