class MatchMessagesController < ApplicationController
  def create
    @match = Match.find(params[:match_id])
    @match_message = MatchMessage.new(message_params)
    @match_message.match = @match
    @match_message.user = current_user
    if @match_message.save
      ChatroomChannel.broadcast_to(
      @match,
      render_to_string(partial: "match_message", locals: { message: @match_message })
    )
      redirect_to match_path(@match, anchor: "message-#{@match_message.id}")
    else
      render "matches/show"
    end
  end


  private

  def message_params
    params.require(:match_message).permit(:content)
  end
end
