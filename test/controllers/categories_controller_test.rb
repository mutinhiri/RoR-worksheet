require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
    test "Should get categories index " do
        get categories_path
        assert_response :success
    end

    test "should get test " do
        get new_category_path
        assert_response :success
    end

    test "Should get show" do
        get category_path
    end
end