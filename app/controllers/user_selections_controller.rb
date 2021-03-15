 class UserSelectionsController < ApplicationController

  before_action :find_selection, only: [:show, :edit, :update, :destroy]

  def new
    @user_selection = UserSelection.new
  end

  def create
    @user_selection = UserSelection.new(selection_params)
    @user_selection.user = current_user
      if @user_selection.save
        redirect_to matches_path
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
    @user_selection.update(find_selection)
    redirect_to dashboard_path
  end

  def destroy
    @user_selection.destroy
    redirect_to dashboard_path
  end

private

  def find_selection
    @user_selection = UserSelection.find(params[:id])
  end

  def selection_params
    params.require(:user_selection).permit(:experience, :objective, :tech_stack_id)
  end
end
