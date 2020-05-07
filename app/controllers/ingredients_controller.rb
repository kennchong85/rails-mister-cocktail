class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    # @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.new(ingredient_params)

    @ingredient.save

    redirect_to cocktail_path(@cocktail)
  end

  def edit
  end

  def update
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @cocktail.destroy

    redirect_to cocktails_path(@cocktail)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end

