require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(username: "NickBond007", password: "admin", password_confirmation: "admin")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "username should be present" do
    @user.username = "    "
    assert_not @user.valid?
  end
  
  test "username should not be too long" do
    @user.username = "a" * 51
    assert_not @user.valid?
  end
  
  test "username should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 3
    assert_not @user.valid?
  end
end
