require 'rqrcode'

class TablesController < ApplicationController
  def index
  end

  def show
    @table = Table.find(params[:id])
    qrcode = RQRCode::QRCode.new(table_path(@table))
    @qr = qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6,
      standalone: true
    ).html_safe
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
    if @table.save
      redirect_to table_path(@table)
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

  def table_params
    params.require(:table).permit(:number)
  end
end
