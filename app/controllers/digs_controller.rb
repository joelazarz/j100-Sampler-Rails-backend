class DigsController < ApplicationController

    def index 
        digs = Dig.all 

        render json: digs
    end

    def show
        dig = Dig.find(params[:id])

        render json: dig
    end

    def new
        dig = Dig.new 
    end

    def create
        dig = Dig.create(dig_params)
        render json: dig
    end

    def destroy
        dig = Dig.find(params[:id])
        dig.destroy
    end

    private

    def dig_params
        params.require(:dig).permit(:kit_id, :user_id, :name, :dig_pad_start, :dig_pad_end)
    end

end
