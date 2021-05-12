class AvailableCitiesController < ApplicationController
  def index
    @available_cities = Restaurant.all.map(&:city).uniq
    render json: @available_cities
  end
end
