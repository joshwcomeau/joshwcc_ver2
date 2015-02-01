class BlogPostsController < ApplicationController
  before_action :require_login, except: [:index, :show]
  before_action :fetch_post, only: [:show, :edit, :update, :delete]
  def index
    @posts = BlogPost.includes(:images)
  end

  def show
  end 

  def new
    @post   = BlogPost.new
    @image  = Image.new 
  end

  def create
    @post = BlogPost.new(post_params)
    @post.user = current_user
    
    if @post.save
      redirect_to blog_post_path(@post)
    else
      flash[:alert] = "Could not save blog post."
      render :new
    end
  end




  private

  def post_params
    params.require(:blog_post).permit(:title, :subtitle, :content, :author, :abstract, :featured, :colour, :published )
  end

  def fetch_post
    @post = BlogPost.find(params[:id])
  end
end
