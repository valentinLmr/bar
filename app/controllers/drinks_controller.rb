class DrinksController < ApplicationController
  def index
  end

  def show
    @drink = Drink.find(params[:id])
    authorize(@drink)
    authorize(@menu)
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @restaurant = @menu.restaurant
    @drink = Drink.new(drink_params)
    @drink.menu = @menu
    authorize(@drink)
    if @drink.save!
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :price, :category)
  end
end
