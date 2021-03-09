class DashboardsController < ApplicationController
  def show
    @list_of_possibles = current_user.possibles
  end
end

