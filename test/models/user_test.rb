require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
	@user = User.new(name: "exampleuser", email: "user@example.com") 
  end

  test "should be valid" do
	  assert @user.valid?
  end

  test "name should be present" do
	  @user = "    "
	  assert_not @user.valid?

end
