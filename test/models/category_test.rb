require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
    def setup
      @category = Category.new(name: "sports")  
    end

    test "Category should be valid " do
        assert @category.valid?
    end

    test "name should not be empty" do
        @category.name = ""
    end
end