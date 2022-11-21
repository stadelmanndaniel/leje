class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy]

  # Add here the methods that you want a visitor to access without an account
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    @offers = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      redirect_to @offer, notice: "offer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :price, :address)
  end
end
