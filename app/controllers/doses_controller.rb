class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # Find ther right cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose = Dose.new(dose_params)

    # add the cocktail to the dose
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    @dose.save

    redirect_to cocktail_path(@cocktail)
  end

  def edit
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = Dose.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])

    @dose.cocktail = @cocktail
    @dose.update(dose_params)
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])

    @dose.destroy

    respond_to do |format|
      format.html { redirect_to cocktail_path(@cocktail), notice: 'page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
