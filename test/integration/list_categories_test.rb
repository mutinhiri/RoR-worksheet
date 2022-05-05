require "test_helper"

class CreateCategoriesTest < ActionDispatch::IntegrationTest
    def setup
        @category = Category.create(name: "sports")
        @category2 = Category.create(name: "programming")

        test "Should show categories listing" do
        end 
    end
end