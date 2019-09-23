class KitsController < ApplicationController

    def index 
        kits = Kit.all 

        render json: kits
    end

    def show
        kit = Kit.find(params[:id])

        render json: kit
    end

    def new
        kit = Kit.new 
    end

    def create
        kit = Kit.create(kit_params)
        render json: kit
    end

    def destroy
        kit = Kit.find(params[:id])
        kit.destroy
    end

    private

    def kit_params
        params.permit(:name, :detail, :sample_url, :image_url)
    end

end
