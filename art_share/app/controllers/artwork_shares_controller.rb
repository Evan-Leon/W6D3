class ArtworkSharesController < ApplicationController

 def index 
        artworkshares = ArtworkShare.all
        render json: artworkshares 
    end

    def show
        artworkshare = ArtworkShare.find(params[:id])
        render json: artworkshare 
    end

  def create
    artworkshare = ArtworkShare.new(artworkshare_params)
    # debugger
    if artworkshare.save
        render json: artworkshare 
    else  
        render json: artworkshare.errors.full_messages, status: 422 
    end
        
  end

  def update 
    artworkshare = ArtworkShare.find(params[:id])
        # debugger
     if artworkshare.update(artworkshare_params)
        # debugger
        redirect_to artwork_share_url(artworkshare)
        # render json: artworkshare
    else  
        render json: artworkshare.errors.full_messages, status: 422
    end
  end

  def destroy 
    artworkshare = ArtworkShare.find(params[:id])
    debugger
    artworkshare.destroy
    debugger
    redirect_to artwork_share_url
    debugger    
  end

  protected
  def artworkshare_params
    params.require(:artworkshare).permit(:viewer_id, :artwork_id)
  end







end