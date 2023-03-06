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

  test "name can not be too long" do 
    @user.name = "a" * 61
    assert_not @user.valid?
  end

  test "email can not be too long" do 
    @user.email = "a" * 255 + "@et.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[dany@example,com JOHN@test. TEST@ex-ample.com tony+smith@example.com tony+smith@eg.com]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should not accept valid addresses" do
    invalid_addresses = %w[dany@example.com JOHN@test.com Mary_Smith-01@new.com tony.smith@example.com tony+smith@eg.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be valid"
    end
  end

end
