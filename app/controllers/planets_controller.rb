class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :update, :edit, :destroy]

  def index
    @planets = Planet.all
    render component: "Planets", props: {planets: @planets}
  end

  def show
    # @planet = Planet.find(params[:id])
    render component: "Planet", props: {planet: @planet[:id]}
  end

  def new
    render component: "PlanetNew"
  end

  def edit
    # @planet = Planet.find(params[:id])
    render component: "PlanetEdit"
  end
  
  def destroy
    # @planet = Planet.find(params[:id])
      @planet.destroy
      redirect_to root_path
  end
  
  def update
    # @planet = Planet.find(params[:id])
  end

  private
  def set_planet
    @planet = Planet.find(params[:id])
  end

end
