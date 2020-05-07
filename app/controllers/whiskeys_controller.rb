class WhiskeysController < ApplicationController
  before_action :find_whiskey, only: %i[show edit update destroy]

  def index
    @whiskeys = Whiskey.all
  end

  def show
  end

  def new
    @whiskey = Whiskey.new
  end

  def create
    @whiskey = Whiskey.new(user_params)

    if @whiskey.save
      redirect_to whiskey_path(@whiskey)
    else
      raise
      render :new
    end
  end

  def edit
  end

  def update
    if @whiskey.update(user_params)
      redirect_to whiskey_path(@whiskey)
    else
      render :new
    end
  end

  def destroy
    @whiskey.destroy

    redirect_to whiskeys_path
  end

  private

  def user_params
    params.require(:whiskey).permit(:name, :description, :year, :photo)
  end

  def find_whiskey
    @whiskey = Whiskey.find(params[:id])
  end
end
