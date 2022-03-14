class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.place_id = params["place_id"]
  end

  def create
    if @current_user
      @post = Post.new(params["post"])
      @post.user_id = @current_user.id
      @post.save  
    else
      flash[:notice] = "Please Login before you can post."
    end
    redirect_to "/places/#{@place_id}"
  end
end
