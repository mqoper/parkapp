class PlacesController < ApplicationController
    def index
        @places = Place.all
    end
    def new
        @place = Place.new
    end
    def create
        @place = Place.new(place_params)
        if @place.save
            flash[:notice] = "Place was created successfully."
            redirect_to place_path(@place)
        else
            render 'new'
        end
    end
    def show

    end

    def place_params
        params.require(:place).permit(:name, :status)
    end
end

