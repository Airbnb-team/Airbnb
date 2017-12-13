class PricesController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@price = Price.new
	end

	def create
		@room = Room.find(params[:room_id])
		@price = @room.prices.new(price_params)
		if @price.save
			redirect_to root_path, notice: 'New room was successfully created'
    else
      flash.now[:alert] = 'New room was unsuccessfully created'
    end
	end

	def edit
	end

	def update
	end

	private

	def price_params
   params.require(:price).permit(
   	:basic_charge,
   	:cleaning_fee,
   	:deposit_money,
   	:additional_fee,
   	:weekend_rates,
   	).merge(room_id: params[:room_id], user_id: current_user.id)
 end

end
