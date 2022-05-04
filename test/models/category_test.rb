require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
    def setup
      @category = Category.new(name: "sports")  
    end

    test "Category should be valid " do
        assert @category.valid
    end
end