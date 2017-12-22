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
    @reservation = Reservation.new(reservation_params_from_groups_show)
    @reservation.save

  end

  private

    def reservation_params
      params.require(:reservation).permit(:check_in, :check_out, :room_id, :guest_count).merge(user_id:current_user.id)
    end

    def reservation_params_from_groups_show
    params.require(:reservation).permit(:check_in, :check_out, :room_id, :guest_count, :user_id)
    end

end
