class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menu = Menu.new
    @drink = Drink.new
    authorize(@drink)
    authorize(@menu)
    authorize(@restaurant)
    @existingmenus = @restaurant.menus.all
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
    authorize(@restaurant)
    @restaurant.destroy

    redirect_to dashboard_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :email, :description)
  end
end
