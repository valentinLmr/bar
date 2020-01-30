class MenusController < ApplicationController
  def index
  end

  def show
    @menu = Menu.find(params[:id])
    @drink = Drink.new
    authorize(@menu)
    authorize(@drink)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu = Menu.new
    authorize(@menu)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu = Menu.new
    @menu.restaurant = @restaurant
    authorize(@menu)
    if @menu.save
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


end
