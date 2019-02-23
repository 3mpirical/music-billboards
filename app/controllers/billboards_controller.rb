class BillboardsController < ApplicationController
  before_action :get_billboard, only: [:show, :edit, :destroy]

  def index
    @billboards = Billboard.all()
  end

  def show
  end

  def edit
    @songs = Song.all()
  end

  def new
    @songs = Song.all()
  end

  def create
    billboard = Billboard.create(name: params[:name])

    if(billboard)
      update_songs_on_board(billboard)
      redirect_to(billboard_path(billboard.id))
    else
      render(:new)
    end
  end

  def update
    billboard = Billboard.update(params[:id], name: params[:name] )

    if(billboard)
      update_songs_on_board(billboard)
      redirect_to(billboard_path(billboard.id))
    else
      render(:new)
    end
  end

  def destroy
    @billboard.destroy()
    redirect_to(billboards_path)
  end

  private
    def get_billboard
      return @billboard = Billboard.find(params[:id])
    end

    def update_songs_on_board(billboard)
      billboard.song_slots.destroy_all()

        params[:song_id].each() {|song_id|
          SongSlot.create(billboard_id: billboard.id, song_id: song_id)
        }
    end

end
