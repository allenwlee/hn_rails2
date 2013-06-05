class PostsController < ActionController::Base

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    p "PARAMS*********"
    p params
    @post = Post.new(params[:post])
    @post.save
    p "POST*********"
    p @post
  end

  def edit
    @post = Post.find(params[:id])
  end
end