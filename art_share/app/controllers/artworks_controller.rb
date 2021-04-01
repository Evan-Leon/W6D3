class ArtworksController < ApplicationController

    def index 
        user = User.find(params[:id])

        render json: user.artworks 
    end

    def show 

    end

    def create

    end

    def update 

    end

    def destroy 

    end

    protected

    def artwork_params

    end
end