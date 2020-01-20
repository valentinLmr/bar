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
    if @dishcommand.save!
      Redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def command_params
    params.require(:command).permit(:appetizer, :number_of_diner)
  end
end
