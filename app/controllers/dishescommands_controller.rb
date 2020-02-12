class DishescommandsController < ApplicationController
  def index
    @dishcommands = DishesCommands.all
  end

  def show
    @dishcommand = DishesCommands.find(params[:id])
  end

  def new
    @command = Command.find(params[:command_id])
    @dishcommand = Dishescommand.new
    authorize(@dishcommand)
  end

  def create
    @command = Command.find(params[:command_id])
    @dishcommand = Dishescommand.new(dishescommands_params)
    @dishcommand.command = @command
    authorize(@dishcommand)

    if @dishcommand.save!
      respond_to do |format|
        format.html { redirect_to command_path(@command) }
        format.js {}
      end
    else
      respond_to do |format|
        format.html { redirect_to command_path(@command) }
        format.js {}
      end
    end
  end

  def edit
    @dishescommand = Dishescommand.find(params[:id])
    authorize(@dishescommand)
  end

  def update
    @dishescommand = Dishescommand.find(params[:id])
    @restaurant = @dishescommand.command.table.restaurant
    authorize(@dishescommand)

    if @dishescommand.update(dishescommand_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def dishescommands_params
    params.require(:dishescommand).permit(:drink_id)
  end

  def dishescommand_params
    params.require(:dishescommand).permit(:state)
  end
end
