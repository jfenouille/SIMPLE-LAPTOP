class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :destroy, :update, :edit, :confirmation, :delivery]
  # test
  def index
    @bookings = Booking.all
  end

  def show
    @product = @booking.product
  end

  def new
    @booking = Booking.new
    @product = Product.find(params[:format])
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = @booking.product
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def confirmation
    @product = @booking.product

    # if booking_params[:payment] == "true"
    if request.patch?

      @product = @booking.product
      @product.availability = false
      @product.save!
      redirect_to root_path
    end
  end

  def delivery
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:payment, :days, :product_id, :user_id, :price)
  end
end
