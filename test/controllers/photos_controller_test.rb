require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @photo = photos(:photo1)
  end
  
  test "should redirect create when not logged in" do
    assert_no_difference 'Photo.count' do
      post photo_catalogue_path, params: { photo: { subject: "Test Subject", caption: "Test Caption" } }
    end
    assert_redirected_to root_path
  end
  
  test "should redirect destory when not logged in" do
    assert_no_difference 'Photo.count' do
      delete blog_path(@photo)
    end
    assert_redirected_to root_path
  end
  
end
