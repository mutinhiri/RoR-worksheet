require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
    def setup
        @category = Category.create(name: "sports")
    end

    test "Should get categories index " do
        get categories_path
        assert_response :success
    end

    test "should get test " do
        get new_category_path
        assert_response :success
    end

    test "Should get show" do
        get category_path(@category)
        assert_response :success
    end

    test "should redirect create when admin not logged in" do
        assert_no_difference 'Category.count' do 
            post categories_path, params: { category: {name: "sports"}}
        end
        assert_redirected_to
    end
end