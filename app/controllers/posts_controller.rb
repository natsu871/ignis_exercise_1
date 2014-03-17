class PostsController < ApplicationController
  def index
    @posts = Post.limit(100).page params[:page]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    @user = User.new()
    @user.uuid = SecureRandom.uuid
    @post.user_id = @user.id

    if @post.save
      flash[:success] = "your post created!"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :body)
  end
end
