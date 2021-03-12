class MatchesController < ApplicationController
  def create
    @matchee = User.find(match_params[:matchee_id].to_i)
    @my_like = Match.where(matcher: current_user, matchee: @matchee)
    @likes_me = Match.where(matchee: current_user, matcher: @matchee)
    @matches = @my_like + @likes_me
    # checking to see if status is alraedy one
    if @matches.length >= 1
      @match = @matches.first
      @match.status = 2
      @match.save
      flash.alert = "You matched with #{@matchee.first_name}"
    else
      # create_new_match
      @match = Match.new(matchee: @matchee, matcher: current_user, status: match_params[:status])
      @match.save
    end
  end

  def show
    @matches = current_user.matches
    @match = Match.find(params[:id])
    @match_message = MatchMessage.new
  end

  def index
    @possibles = current_user.possibles
  end

  private

  def match_params
    params.require(:match).permit(:matchee_id, :status)
  end
end
#we want to create a chat

