class GenresController < ApplicationController

    def index 
        genres = Genre.all 

        render json: genres
    end

    def show
        genre = Genre.find(params[:id])

        render json: genre
    end

    def new
        genre = Genre.new 
    end

    def create
        genre = Genre.create(genre_params)
        render json: genre
    end

    def destroy
        genre = Genre.find(params[:id])
        genre.destroy
    end

    private

    def genre_params
        params.require(:genre).permit(:kit_id, :genre)
    end

end
