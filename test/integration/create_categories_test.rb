require "test_helper"

class CreateCategoriesTest < ActionDispatch::IntegrationTest
    test "get new categories form and create category" do
        get new_category_path
    end
end