require 'test_helper'

class PhotoCatalogueTest < ActionDispatch::IntegrationTest
  include ApplicationHelper
  
  test "photo catalogue display" do
    get photo_catalogue_path
    assert_template 'photos/index'
    assert_select 'title', full_title("Photo Catalogue")
    assert_select 'h1', text: "Photo Catalogue"
  end
end
