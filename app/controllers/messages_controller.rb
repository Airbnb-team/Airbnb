class MessagesController < ApplicationController
  def index
  end

  def create
    @message = Message.new(message_params)
    @message.save
    binding.pry
    render "messages/show"
  end

  def new
    @message = Message.new
  end

  def show
    @message = Message.new(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:body)
  end

end
