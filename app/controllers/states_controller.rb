class StatesController < ApplicationController
    
    def index 
        @states = State.all
        render json: @states include [:mountains]
    end

    def show
        @state = State.find(params[:id])
        render json: @hstate include [:mountains]
    end

    def create
        @states = State.create(
            name: params[:name],
            geography: params[:geography],
            climate: params[:climate]
        ) 
    end

end
