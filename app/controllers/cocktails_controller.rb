class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i[show edit update]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(user_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      raise
      render :new
    end
  end

  def show
    @dose = Dose.where(cocktail_id: @cocktail)

    @ingredient = Ingredient.where(cocktail_id: @cocktail)
  end

  def edit
  end

  def update
    if @cocktail.update(user_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def user_params
    params.require(:cocktail).permit(:name, :description)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
