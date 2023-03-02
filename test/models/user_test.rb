require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Test User", email: "test@example.com");
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be peresent" do 
    @user.name = "     "
    assert_not @user.valid?
  end

  test "email should be peresent" do 
    @user.email = "     "
    assert_not @user.valid?
  end
end
