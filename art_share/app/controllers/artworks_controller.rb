class ArtworksController < ApplicationController

    def index 
    
        user = User.find(params[:user_id])
         
        artwork =  Artwork.artworks_for_user_id(user.id)
        shared = user.shared_artworks
        artwork += shared 
        render json: artwork
    end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork 
    end

  def create
    artwork = Artwork.new(artwork_params)
    # debugger
    if artwork.save
        render json: artwork 
    else  
        render json: artwork.errors.full_messages, status: 422 
    end
        
  end

  def update 
    artwork = Artwork.find(params[:id])
        # debugger
     if artwork.update(artwork_params)
        # debugger
        redirect_to artwork_url(artwork)
        # render json: artwork
    else  
        render json: artwork.errors.full_messages, status: 422
    end
  end

  def destroy 
    artwork = Artwork.find(params[:id])
    artwork.destroy
    redirect_to artworks_url 
  end

  protected
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end

end