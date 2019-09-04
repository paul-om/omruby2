class MessagesController < InheritedResources::Base

  private

    def message_params
      params.require(:message).permit(:user_id, :content)
    end

end
