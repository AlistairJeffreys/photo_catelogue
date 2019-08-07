require 'test_helper'

class BlogpostTest < ActiveSupport::TestCase
  def setup
    @blogpost = Blogpost.new(title: "Photography", content: "It is great!")
  end

  test "should be valid" do
    assert @blogpost.valid?
  end

  test "title should be present" do
    @blogpost.title = nil
    assert_not @blogpost.valid?
  end
  
  test "content should be present" do
    @blogpost.content = nil
    assert_not @blogpost.valid?
  end
  
  test "title should be at most 50 characters" do
    @blogpost.title = "a" * 51
    assert_not @blogpost.valid?
  end
  
  test "content should be at most 500 characters" do
    @blogpost.content = "a" * 5001
    assert_not @blogpost.valid?
  end
  
  test "order should be most recent first" do
    assert_equal blogposts(:most_recent), Blogpost.first
  end
end
