class StatesController < ApplicationController
    
    def index 
        @states = State.all
        render json: @states, include: [:mountains]
    end

    def show
        @state = State.find(params[:id])
        render json: @state, include: [:mountains]
    end

    def create
        @states = State.create(
            name: params[:name],
            geography: params[:geography],
            climate: params[:climate],
            mountain_id: params[:mountain_id]
        ) 
        redirect_to "http://localhost:3001"
    end

end
