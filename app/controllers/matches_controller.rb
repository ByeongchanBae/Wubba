class MatchesController < ApplicationController
# i've had a crack at task 2
  # before_action :remove_possibles, only: (:index)

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
      redirect_to match_path(@match)
    else
      # create_new_match
      @match = Match.new(matchee: @matchee, matcher: current_user, status: match_params[:status])
      @match.save
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

  # def remove_possibles
  #     @possibles.delete_all
  # end

  def match_params
    params.require(:match).permit(:matchee_id, :status, :tech_stack_id, :search)
  end
end

