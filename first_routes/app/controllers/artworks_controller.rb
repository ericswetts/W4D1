class ArtworksController < ApplicationController

  def index
      art = Artwork.where(artist_id: params[:user_id])
      render json: art
  end


end
