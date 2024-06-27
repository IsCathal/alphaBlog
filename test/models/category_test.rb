require 'test_helper'

class CategoryTest < ActiveSupport::TestCase 

  def setup
    @category = Category.new(name: "Sports")
  end

 test "category should be vaild" do 
  assert @category.valid?
 end

 test "name should be present" do 
  @category.name = " "
  assert_not @category.valid?
 end
 
 test "name should be unique" do
  #not saved to db
  @category.save
  @category2  = Category.new(name: "Sports")
  assert_not @category2.valid?
 end

 test "name should not be too long" do
  @category.name = "toolonganammmmmmmmmmmmmmmmmmme "
  assert_not @category.valid?

 end

 test "name should not be too short" do 
  @category.name = "to "
  assert_not @category.valid?

 end

end