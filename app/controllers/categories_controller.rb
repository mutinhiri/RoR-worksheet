class CategoriesController < ApplicationController
    def index
    end

    def new
        @category = Category.new()
    end 

    def create
        @category 
    end

    def show 
    end
end