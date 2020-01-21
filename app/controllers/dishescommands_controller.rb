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
  end

  def create
    @command = Command.find(params[:command_id])
    @dishcommand = Dishescommand.new(dishescommands_params)
    @dishcommand.command = @command
    if @dishcommand.save!
      redirect_to new_command_dishescommand_path(@command)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def dishescommands_params
    params.require(:dishescommand).permit(:appetizer_id)
  end
end
