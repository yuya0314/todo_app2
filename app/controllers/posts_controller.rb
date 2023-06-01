class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)    # 実装は終わっていないことに注意!
    if @post.save
      flash[:success] = "投稿しました"
      redirect_to("/")
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    debugger
  end
  private
   def post_params
     params.require(:post).permit(:title, :start,:finish,:alltime,:memo )
   end
end
