class BlogPostsController < ApplicationController
  before_action :require_login, only: [:new, :create]
  def index
    @posts = BlogPost.includes(:images)
  end

  def show
    @post = BlogPost.find(params[:id])
  end 

  def new
  end

  def create
  end
end
