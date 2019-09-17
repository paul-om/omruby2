class MessagesController < InheritedResources::Base

  def new
  	@message = current_user.messages.new
  end

  private

    def message_params
      params.require(:message).permit(:user_id, :content)
    end

end
