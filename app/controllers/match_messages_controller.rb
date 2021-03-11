class MatchMessagesController < ApplicationController
  def create
    @match = Match.find(params[:match_id])
    @match_message = MatchMessage.new(message_params)
    @match_message.match = @match
    @match_message.user = current_user
    if @match_message.save
      redirect_to match_path(@match, anchor: "message-#{@message.id}")
    else
      render "match/show"
    end
  end


  private

  def message_params
    params.require(:match_message).permit(:content)
  end
end
