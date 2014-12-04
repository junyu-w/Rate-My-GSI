class RatingsController < ApplicationController

  def create  
  end

  def rate
    @rating.level = params[:rating]
  end

  def show
    @rating = GSI.find(params[:id])
  end
end

