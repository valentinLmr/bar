class CommandsController < ApplicationController
  def index
    @commands = Command.all
  end

  def show
    @command = Command.find(params[:id])
  end

  def new
    @table = Table.find(params[:table_id])
    @command = Command.new
  end

  def create
    @table = Table.find(params[:table_id])

    @command = Command.new(command_params)
    @command.table = @table
    if @command.save!
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

  def command_params
    params.require(:command).permit(:appetizer, :number_of_diner)
  end
end
