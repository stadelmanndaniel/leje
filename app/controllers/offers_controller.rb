class OffersController < ApplicationController
  before_action :set_offer, only: %i[ show edit update destroy ]
  def index
    @offers = Offer.all
  end

  def show

  end

  def new
  end

  def create
  end


private

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
