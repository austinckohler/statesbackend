class MountainsController < ApplicationController

        def index
            @mountains = Mountain.all
            render json: @mountains include[:state]        
        end

        def show
            @mountain = Mountain.find(params[:id])
            render json: @mountain include[:state]
        end

end
