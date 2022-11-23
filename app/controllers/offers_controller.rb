class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy]

  # Add here the methods that you want a visitor to access without an account
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    if params[:query].present?
      @offers = Offer.where(category: params[:query])
    else
      @offers = Offer.all
    end
  end

  # def search
  #   @offers = Song.where(category: params[:query])
  # end

  def show
    @booking = Booking.new
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to @offer, notice: "offer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: "Offer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_url, notice: "Offer was successfully destroyed."
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :price, :address, :user_id, photos: [])
  end
end
