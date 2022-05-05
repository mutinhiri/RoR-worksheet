require "test_helper"

class CreateCategoriesTest < ActionDispatch::IntegrationTest
    def setup
        @category = Category.create(name: "sports")
        @category2 = 
    end
end