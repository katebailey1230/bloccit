class AdvertisementsController < ApplicationController
  def index
      @Advertisements = Advertisement.all
  end

  def show
  end

  def new
  end

  def create
  end
end
