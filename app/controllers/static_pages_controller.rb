class StaticPagesController < ApplicationController
  def home
    @blogpost = Blogpost.first
    @photo = Photo.first
  end

  def about
  end

  def contact
  end
end
