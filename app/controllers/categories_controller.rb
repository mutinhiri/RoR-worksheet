class CategoriesController < ApplicationController
    def index
    end

    def new
        @category = Category.new()
    end 

    def create
        @category = Category.new(category_params)
        if @category.save

        else
            render 'new'
        end

    end

    def show 
    end

    private 

    def category_params
    end
end