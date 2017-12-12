class MessagesController < ApplicationController
  def index
  end

  def create
    @message = Message.new(message_params)
    @message.save
    render "messages/show"
  end

  def new
    @reservation = Reservation.new(reservation_params)
    @checkin = params[:reservation][:check_in]
    @checkout = params[:reservation][:check_out]
    @guestcount = params[:reservation][:guest_count]
    @messagebody = params[:message][:body]
    @message_body = @checkin.to_s+"/"+@checkout.to_s+"/"+@guestcount.to_s+"/"+@messagebody
    @message = Message.new(body: @message_body )
    @message.save
  end

  def show
    @message = Message.new(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:body).merge(user_id:current_user.id)
  end

  def reservation_params
    params.require(:reservation).permit(:check_in, :check_out, :room_id).merge(user_id:current_user.id)
  end

end
