class CommentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post)
    else
      render "posts/show"
    end
  end

  def show
  end

  def edit
  end

  def update
    @comment.update(comment)
  end

  def destroy
    @comment.destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:reply)
  end
end
