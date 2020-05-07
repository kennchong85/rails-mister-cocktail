class WinesController < ApplicationController
  before_action :find_wine, only: %i[show edit update destroy]

  def index
    @wines = Wine.all
  end

  def show
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(user_params)

    if @wine.save
      redirect_to wine_path(@wine)
    else
      raise
      render :new
    end
  end

  def edit
  end

  def update
    if @wine.update(user_params)
      redirect_to wine_path(@wine)
    else
      render :new
    end
  end

  def destroy
    @wine.destroy

    redirect_to wines_path
  end

  private

  def user_params
    params.require(:wine).permit(:name, :description, :vintage, :alcohol_percent, :photo, :country_id)
  end

  def find_wine
    @wine = Wine.find(params[:id])
  end
end
