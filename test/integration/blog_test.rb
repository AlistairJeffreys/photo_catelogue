require 'test_helper'

class BlogTest < ActionDispatch::IntegrationTest
  include ApplicationHelper
  
  test "blog display" do
    get blog_path
    assert_template 'blogposts/index'
    assert_select 'title', full_title("Blog")
    assert_select 'h1', text: "Blog"
  end
end
