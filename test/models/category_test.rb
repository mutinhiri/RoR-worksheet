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
        assert_not @category.valid?
    end

    test "name should be unique" do
        @category.save
        category2 = Category.new(name: "sports")
end