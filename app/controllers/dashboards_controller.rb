class DashboardsController < ApplicationController
  def show
    @list_of_possibles = current_user.possibles
    @user = current_user
  end
end


# show matches matched
