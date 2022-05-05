require "test_helper"

class CreateCategoriesTest < ActionDispatch::IntegrationTest
    def setup
        @category = Category.create()
    end
end