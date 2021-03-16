class MatchesController < ApplicationController
  def create
    @matchee = User.find(match_params[:matchee_id].to_i)
    @my_like = Match.where(matcher: current_user, matchee: @matchee)
    @likes_me = Match.where(matchee: current_user, matcher: @matchee)
    @matches = @my_like + @likes_me
  # checking to see if status is alraedy one
    if @matches.length >= 1
      @match = @matches.first
      @match.status = match_params[:status]
      if @match.save
        redirect_to match_path(@match) if @match.status == 2
        redirect_back(fallback_location: root_path) if @match.status == 0
      else
      render 'matches_path'
      end
    else
      # create_new_match
      @match = Match.new(matchee: @matchee, matcher: current_user, status: match_params[:status])
      if @match.matchee != current_user
        @match.save
        create_notification
        respond_to do |format|
          format.html { redirect_back(fallback_location: root_path) }
          format.js
        end
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

  def create_notification
    if @match.status == 2
      notification = Notification.new(recipient: @match.matcher, actor: @match.matchee,
      action: 'matched', notifiable: @match)
    elsif @match.status == 1 && params[:request] == "post"
      notification = Notification.new(recipient: @match.matchee, actor: @match.matcher,
      action: 'matched', notifiable: @match)
     ActionCable.server.broadcast(
        "notifications:#{notification.recipient_id}",
        ActionController::Base.new().render_to_string(partial: "notifications/notification", locals: { notification: notification })
      ) if notification.save
    else @match.status == 0
    end
  end

  def match_params
    params.require(:match).permit(:matchee_id, :status, :tech_stack_id, :search)
  end
end

