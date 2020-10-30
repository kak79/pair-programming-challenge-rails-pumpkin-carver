class FarmsController < ApplicationController

  def index
    @farms = Farm.all
  end

  def show
    @farm = Farm.find_by_id(params[:id])
    if !@farm
      flash[:errors] = ["Could not find a farm with the id #{params[:id]}"]
      redirect_to farms_path
    end
  end

  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.new(farm_params)
    byebug
    if @farm.save
      flash[:messages] = ["#{@farm.name} successfully created"]
      redirect_to farm_path(@farm)
    else
      flash[:errors] = @farm.errors.full_messages
      redirect_to new_farm_path
    end
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :img_url, :zip_code, :description)
  end

end
