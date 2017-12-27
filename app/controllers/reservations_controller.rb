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
    @dates_to_stay = @reservation.check_out - @reservation.check_in

    check_in_user_input = @reservation.check_in
    dates = []
    dates << check_in_user_input.strftime('%a')
    @dates_to_stay.to_i.times{
    each_dates = check_in_user_input+=1
    dates << each_dates.strftime('%a')
    match_dates = dates.map{ |a| a.match(/Sat|Sun/) }
    @day_count = match_dates.compact.count
    }
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
