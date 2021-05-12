class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end
end
