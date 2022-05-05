class CategoriesController < ApplicationController
    def index
    end

    def new
        @category = Category.new()
    end 

    def create
        @category = Category.new(category_params)
    end

    def show 
    end
end