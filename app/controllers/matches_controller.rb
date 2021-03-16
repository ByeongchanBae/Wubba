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
    if @match.save
      flash.alert = "You matched with #{@matchee.first_name}"
      redirect_to match_path(@match)
    else
      render 'posts/show'
    end
   else
    # create_new_match
   @match = Match.new(matchee: @matchee, matcher: current_user, status: match_params[:status])
    if @match.save
      redirect_to matches_path
    else
      render 'posts/show'
    end
   end
  end

  def show
    @matches = current_user.matches.sort_by(&:id).reverse
    @match = Match.find(params[:id])
    @match_message = MatchMessage.new
  end

  def index
    @possibles = User.search(params[:search], current_user)
  end

  private

  def match_params
    params.require(:match).permit(:matchee_id, :status, :tech_stack_id, :search)
  end
end

