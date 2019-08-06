require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "title", full_title("Home")
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", about_path, count: 2
    assert_select "a[href=?]", contact_path, count: 2
    
    get contact_path
    assert_template 'static_pages/contact'
    assert_select "title", full_title("Contact")
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", about_path, count: 2
    assert_select "a[href=?]", contact_path, count: 2
    
    get about_path
    assert_template 'static_pages/about'
    assert_select "title", full_title("About")
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", about_path, count: 2
    assert_select "a[href=?]", contact_path, count: 2
  end
  
end
