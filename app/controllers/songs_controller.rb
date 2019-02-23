class SongsController < ApplicationController
    before_action :get_song, only: [:show, :edit, :update, :destroy]
    before_action :get_artist, only: [ :edit, :new, :create, :update, :destroy]

    def show
        @artist = @song.artist
    end

    def new
        @billboards = Billboard.all()
        @song = Song.new
    end

    def edit
    end

    def create
        result = Song.create(
            artist_id: @artist.id,
            name: song_params[:name],
            length: song_params[:length]
        )

        if(result)
            redirect_to(artist_path(@artist.id))
        else
            render(:new)
        end
    end

    def update
        result = @song.update(
            name: song_params[:name],
            length: song_params[:length]
        )

        if(result)
            redirect_to(artist_path(@artist.id))
        else
            render(:edit)
        end
    end

    def destroy
        @song.destroy()
        redirect_to(artist_path(@artist.id))
    end

    private
        def song_params
            return params.permit(:name, :length)
        end

        def get_song
            return @song = Song.find(params[:id])
        end

        def get_artist
            return @artist = Artist.find(params[:artist_id])
        end
end
