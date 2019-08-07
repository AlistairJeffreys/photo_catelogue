class BlogpostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def index
    @blogpost = Blogpost.new if logged_in?
    @blogposts = Blogpost.all.paginate(page: params[:page])
  end
  
  def create
    @blogpost = Blogpost.new(blogpost_params)
    if @blogpost.save
      redirect_to blog_path
    else
      render 'static_pages/home'
    end
  end
  
  def destroy
    Blogpost.find_by(id: params[:id]).destroy
    redirect_to blog_path
  end
  
  private
  
    def blogpost_params
      params.require(:blogpost).permit(:title, :content)
    end
  
end