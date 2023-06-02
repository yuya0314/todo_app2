class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "投稿しました"
      redirect_to("/")
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      lash[:success] = "編集しました"
      redirect_to("/")
    else
      render 'edit'
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "削除しました"
    redirect_to("/")
  end

  private
    def post_params
     params.require(:post).permit(:title, :start,:finish,:alltime,:memo )
    end
end
