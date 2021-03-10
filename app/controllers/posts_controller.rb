class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
    @user = User.find(params[:user_id])
  end

  def create
    @post = Post.new(post_params)
    @user = User.find(params[:booking_id])
    @post.user = @user
    @post.save
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
  end

  def destroy
    @post.destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:description, :date, :title)
  end
end
