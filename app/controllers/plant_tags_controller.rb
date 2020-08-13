class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: tag_params)
    @tags.each do |tag|
      PlantTag.create(tag: tag, plant: @plant)
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def tag_params
    params.require(:plant_tag).require(:tag)
  end
end
