class RecipesController < ApplicationController
  before_action :find_plant
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(plant_params)
    if @recipe.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @recipe.update(plant_params)
      redirect_to plant_recipe_path(@plant, @recipe)
    else
      render :new
    end
  end

  def destroy
    @recipe.destroy
    redirect_to plant_path(@plant)
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end

  def plant_params
    params.require(:recipe).permit(
      :name,
      :part,
      :purpose,
      :ingredients,
      :prep_time,
      :total_time,
      :directions
    ).merge(:plant_id => @plant.id)
  end
end
