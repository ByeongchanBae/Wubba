class MatchsController < ApplicationController
  # def create
  #   @match = Match.new(match_params)
  #   @match.matcher = current_user
  #   @match.save
  # end


  # private

  # def match_params
  #   params.require(:match).permit(:matchee_id, :matcher_id, :matchee_status, :matcher_status)
  # end

  def index
    @possibles = current_user.possibles
  end

  def approve
  end

  def decline
  end
end


# - make a form with a button:
#   - creating a new match
#   - check params
#   - does it set the matchee or do w ned to set it ourselvese?
#   - matcher status to yourself in the create metehod
