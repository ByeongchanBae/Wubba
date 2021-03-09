class MatchsController < ApplicationController
  def create
    @match = Match.new(params[:matchee_])
  end


  private

  def match_params
    params.require(:match).permit(:matchee_id, :matcher_id, :matchee_status, :matcher_status)
  end

end
