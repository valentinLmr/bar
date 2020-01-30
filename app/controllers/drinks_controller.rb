class DrinksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @menu = Menu.find(params[:restaurant_id])
    @drink = Drink.new
    authorize(@menu)
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @drink = Drink.new(drink_params)
    @drink.menu = @menu
    authorize(@drink)
    if @drink.save
      redirect_to menu_path(@menu)
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
    params.require(:drink).permit(:name, :price, :category, :photo)
  end
end
