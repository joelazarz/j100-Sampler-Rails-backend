class CratesController < ApplicationController

    def index
        crates = Crate.all

        render json: crates
    end

    def show
        crate = Crate.find(params[:id])

        render json: crate
    end

    def edit 
        crate = Crate.find(params[:id])
    end

    def update
        crate = Crate.update(crate_params)
    end

    private

    def crate_params
        params.require(:crate).permit(:user_id, :kit_id, :name)
    end

end
