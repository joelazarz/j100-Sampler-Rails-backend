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

    def new 
        crate = Crate.new
    end

    def create
        crate = Crate.create(crate_params)
        if crate.save
            render json: crate
        else
            render json: {errors: crate.errors.full_messages}
        end
    end

    private

    def crate_params
        params.require(:crate).permit(:user_id, :kit_id, :name)
    end

end
