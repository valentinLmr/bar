class TablesController < ApplicationController

  def index
  end

  def show
    @table = Table.find(params[:id])
    @qr = @table.qr
    @qrcode = RQRcode::QRcode.new(@qr)

    @svg = @qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6
    )
    authorize(@table)

  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.new
    authorize(@table)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.new(table_params)
    @table.restaurant = @restaurant
    authorize(@table)
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
