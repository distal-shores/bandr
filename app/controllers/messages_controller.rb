class MessagesController < ApplicationController

 before_filter :restrict_access

  def index
    @messages = Message.all.where('recipient_id = ?', current_user.id.to_s)
  end

  def show
    @message = Message.find(params[:id])

  end

  def new
    @message = Message.new
    if params[:reply_to]
      @reply_to = User.find(params[:reply_to])
    end
    unless @reply_to.nil?
      @message.recipient_id = @reply_to.id
    end
  end

  def create
    @message = Message.new(message_params)
    @message.sender_id = current_user.id
    if @message.save
      flash[:notice] = "Message has been sent"
      redirect_to messages_path
    else 
      render action: :new
    end
  end

  def delete_multiple
    if params[:delete]
      params[:delete].each { |id|
        @message = Message.find(id)
        @message.mark_message_deleted(@message.id,current_user.id) unless @message.nil?
      }
      flash[:notice] = "Messages deleted"
    end
    redirect_to user_messages_path(current_user, @messages)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:body, :subject, :recipient_id)
    end

end
