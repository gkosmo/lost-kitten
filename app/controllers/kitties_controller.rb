class KittiesController < ApplicationController
  def index
    @kitties = Kitty.all
  end

  def show
    @kitty = Kitty.find(params[:id])
  end

  def new
    @kitty = Kitty.new
  end

  def create
    @kitty = Kitty.new(kitty_params)
    @kitty.save
    redirect_to kitties_path
  end

  def edit
    @kitty = Kitty.find(params[:id])
  end

  def update
    @kitty = Kitty.find(params[:id])
    @kitty.update(kitty_params)
    redirect_to kitties_path
  end

  def destroy
    @kitty = Kitty.find(params[:id])
    @kitty.destroy
    redirect_to kitties_path
  end

  private

  def kitty_params
    params.require(:kitty).permit(:found, :name, :address, :phone_number, :species, :found_on, :image_url)
  end
end
