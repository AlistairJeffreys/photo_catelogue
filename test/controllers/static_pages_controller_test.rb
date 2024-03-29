require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_url
    assert_response :success
    assert_select 'title', "Photo Right * Home"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select 'title', "Photo Right * About"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select 'title', "Photo Right * Contact"
  end

end
