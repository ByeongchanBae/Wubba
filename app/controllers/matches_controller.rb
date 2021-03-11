class MatchesController < ApplicationController
  def create
    # if match.status = 2
    @matchee = User.find(match_params[:matchee_id].to_i)
    @matches = Match.where(matcher: current_user, matchee: @matchee)
    if @matches.length >= 1
      # approve_match
      @match = @matches.first
    else
      # create_new_match
      @match = Match.new(matchee: @matchee, matcher: current_user)
    end
    if @match.update(status: match_params[:status])
      redirect_to root_url
    else
      render :index
    end
  end

  # private

  # def match_params
  #   params.require(:match).permit(:matchee_id, :matcher_id, :matchee_status, :matcher_status)
  # end

  def index
    @possibles = current_user.possibles
  end

  private

  def approve(match)
    match.status = 2
  end

  def match_params
    params.require(:match).permit(:matchee_id, :status)
  end
end


# if reject status = 0
#   if one person does an x


# If status create with 1 = confirmed
#   if both have ticked

# If status create but only 2 = pending
#   If only one person has done a tick so far
