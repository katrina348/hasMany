class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :update, :edit, :destroy]

  def index
    @planets = Planet.all
    render component: "Planets", props: {planets: @planets}
  end

  def show
    render component: "Planet", props: {planet: @planet}
  end

  def new
    render component: "PlanetNew"
  end

  def edit
    render component: "PlanetEdit", props: {planet: @planet}
  end

  def create
    @planet= @planet.new(planet_params)
    if(@planet.save)
      redirect_to #find where to direct
    end
  end

  def destroy
    @planet.destroy
    redirect_to #need redirect
  end

  def update
    if @planet.update(planet_params)
      redirect_to #find where to redirect
    else
    end
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :location)
  end

end
