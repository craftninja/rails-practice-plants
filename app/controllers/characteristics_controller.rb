class CharacteristicsController < ApplicationController
  before_action :set_plant
  before_action :set_characteristic, only: [:edit, :update, :show, :delete]

  def index
    @characteristics = Characteristic.where(:plant_id => @plant.id)
  end

  def new
    @characteristic = Characteristic.new
  end

  def create
    @characteristic = Characteristic.new(characteristic_params)
    if @characteristic.save
      redirect_to plant_characteristics_path(@plant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @characteristic.update(characteristic_params)
      redirect_to plant_characteristics_path(@plant)
    else
      render :edit
    end
  end

  private

  def set_characteristic
    @characteristic = Characteristic.find(params[:id])
  end

  def characteristic_params
    params.require(:characteristic).permit(:property_id, :part, :preparation).merge(:plant_id => @plant.id)
  end

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

end
