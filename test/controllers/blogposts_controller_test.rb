require 'test_helper'

class BlogpostsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @blogpost = blogposts(:blog1)
  end
  
  test "should redirect create when not logged in" do
    assert_no_difference 'Blogpost.count' do
      post blog_path, params: { blogpost: { title: "Test Post", content: "Hello world" } }
    end
    assert_redirected_to root_path
  end
  
  test "should redirect destory when not logged in" do
    assert_no_difference 'Blogpost.count' do
      delete blog_path(@blogpost)
    end
    assert_redirected_to root_path
  end
  
end