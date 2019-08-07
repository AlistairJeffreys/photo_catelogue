require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  
  def setup
    @photo = Photo.new(subject: "Bird", caption: "An eagle in flight")
  end
  
  test "should be valid" do
    assert @photo.valid?
  end
  
  test "subject should be present" do
    @photo.subject = nil
    assert_not @photo.valid?
  end
  
  test "caption should be present" do
    @photo.caption = nil
    assert_not @photo.valid?
  end
  
  test "subject should be at most 140 characters" do
    @photo.subject = "a" * 101
    assert_not @photo.valid?
  end
  
  test "caption should be at most 140 characters" do
    @photo.caption = "a" * 101
    assert_not @photo.valid?
  end
  
  test "order should be most recent first" do
    assert_equal photos(:most_recent), Photo.first
  end
  
end
