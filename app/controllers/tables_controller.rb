class TablesController < ApplicationController
  def index
  end

  def show
   @table = Table.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.new(table_params)
    @table.restaurant = @restaurant

    if @table.save!

      redirect_to table_path(@table)
  end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def table_params
    params.require(:table).permit(:number)
  end
end
