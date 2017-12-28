class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @message = Message.new
    @reservation = Reservation.new
  end

  def create
    @new_message = current_user.messages.create(message_params)
  end

  def prereserve
    @group = Group.new(group_params)
    @group.save
    @message = Message.new(prereserve_params)
    @message.save
    redirect_to root_path
  end

  def new
    @reservation = Reservation.new(reservation_params)
    @checkin = params[:reservation][:check_in]
    @checkout = params[:reservation][:check_out]
    @guestcount = params[:reservation][:guest_count]
    @messagebody = params[:message][:body]
    @group = Group.new(group_params)
    @message_body = @checkin.to_s+"/"+@checkout.to_s+"/"+@guestcount.to_s+"/"+@messagebody
    @message = Message.new(body: @message_body )
    @message.save
  end

  def show
    @message = Message.new(message_params)
  end

  private
  def prereserve_params

    params.require(:message).permit(:body).merge( user_id:current_user.id, group_id: Group.all.length )

  end

  def group_params
     params.require(:group).permit(:name, :room_id, user_ids: [])
  end

  def reservation_params
    params.require(:reservation).permit(:check_in, :check_out).merge(room_id: 1, user_id:current_user.id)
  end

  def message_params
  params.require(:message).permit(:image, :body).merge(group_id: params[:group_id])
  end

end
