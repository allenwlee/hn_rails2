class PostsController < ActionController::Base

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    p "PARAMS*********"
    p params
    @post = Post.new(params[:post].permit(:title, :body))
    @post.save
    p "POST*********"
    p @post
  end

end