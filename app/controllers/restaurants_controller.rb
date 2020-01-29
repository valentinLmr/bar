class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menu = Menu.new
    authorize(@menu)
    authorize(@restaurant)

  end

  def new
    @user = current_user
    @restaurant = Restaurant.new

    authorize(@restaurant)
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    authorize(@restaurant)
    @restaurant.save!
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :email, :description)
  end
end
