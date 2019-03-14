class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(resta_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  private
  def resta_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
