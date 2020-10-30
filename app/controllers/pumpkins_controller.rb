class PumpkinsController < ApplicationController
  before_action :set_pumpkin, only: [:show, :edit, :update]

  def index
    @pumpkins = Pumpkin.all
  end

  def create
    @pumpkin = Pumpkin.new(pumpkin_params)

    if @pumpkin.save
      redirect_to pumpkin_path(@pumpkin)
    else
      render :new
    end

  end

  def new
    @pumpkin = Pumpkin.new
  end

  private

  def set_pumpkin
    @pumpkin = Pumpkin.find_by(id: params[:id])
  end

  def pumpkin_params
  params.require(:pumpkin).permit(:name, :img_url, :color, :size, :farm_id)
  end
end
