class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show,:edit,:update,:destroy]
  before_action :set_race

  def index
    @animals = race_class.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      render text: "#{params}"
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def show
    # @animal = Animal.find(params[:id])
  end

  def destroy
  end

  private

  def animal_params
    params.require(:animal).permit(:name,:age,:race,:tribe_id)
  end

  def set_race
    @race = race
  end

  def race
    Animal.races.include?(params[:type]) ? params[:type] : "Animal" 
  end

  def race_class
    race.constantize
  end

  def set_animal
    @animal = race_class.find(params[:id])
  end
end
