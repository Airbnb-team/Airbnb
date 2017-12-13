class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(reservation_params)

  end

  def coming
    @reservation = Reservation.new(reservation_params)
    @message = Message.new
    @group = Group.new
  end

  def show
    redirect_to room_path
  end

  def create
    @reservation = Reservation.new

    if @reservation.save
      redirect_to message_path
    else
    end
  end

  private

    def reservation_params
      params.require(:reservation).permit(:check_in, :check_out, :room_id, :guest_count).merge(user_id:current_user.id)
    end

end
