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
    @drink = Drink.new(drink_params)
    @drink.menu = @menu
    authorize(@drink)
    if @menu.save!
      respond_to do |format|
        format.html { redirect_to menu_path(@menu) }
        format.js { }  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'menus/show' }
        format.js { }  # <-- idem
      end
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
