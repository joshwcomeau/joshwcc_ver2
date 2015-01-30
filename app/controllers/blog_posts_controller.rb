class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.all
  end
end
