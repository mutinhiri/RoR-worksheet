require "test_helper"

class CreateCategoriesTest < ActionDispatch::IntegrationTest
    test "get new categories form and create category" do
        get new_category_path
        assert_template "categories/new"
        assert_difference "Category.count", 1 do
            post categories_path, params: { category: {name: "sports"}}
            follow_redirect
        end
        assert_template
    end
end