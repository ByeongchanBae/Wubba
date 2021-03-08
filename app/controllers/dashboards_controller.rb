class DashboardsController < ApplicationController
  def show
    @user_selections = current_user.user_selections
   # we need to display the users who have matched our selections
   #we need to be able to reject or accept these matches.
  end
end

