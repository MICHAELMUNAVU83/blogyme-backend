class AuthorsController < ApplicationController

    def index
        @authors = Author.all
        render json: @authors
    end


    def show
        @author = Author.find(params[:id])
        render json: @author
    end

    def create
        @author = Author.create(author_params)
        render json: @author
    end

    def update

        @author = Author.find(params[:id])
        @author.update(author_params)
        render json: @author
    end

    def destroy
        @author = Author.find(params[:id])
        @author.destroy
    end

    private

    def author_params
        params.permit(:name, :photo, :bio)
    end



end
