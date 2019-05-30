class SearchesController < ApplicationController
    def new
        @search = Search.new
    end

    def create
        @search = Search.create!(searches_params)
        redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end
    
    private

    def searches_params
        params.require(:search).permit(:keywords)
    end
end
