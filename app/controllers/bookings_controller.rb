class BookingsController < ApplicationController
  def index
  end

  def create
    TattooMailer.new_request(booking_params).deliver_now
    redirect_to some_path, notice: 'Tattoo request submitted successfully'
  end

  private 
  
  def booking_params
    params.require(:booking).permit(:is_adult, :style, :body_part, :size, :description, :artist, tattoo_idea, :legal_consent)
  end
end
