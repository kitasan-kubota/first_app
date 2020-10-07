class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      
    else
      render 'new'
    end
      
  end

  private
    def post_params
      params.require(:post).permit(:content)
    end

end
