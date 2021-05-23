class PlanetsController < ApplicationController
  

  def index
    @planets = Planet.all
    render component: "Planets", props: {planets: @planets}
  end

  def show
    render component: "Planet"
  end

  def new
    render component: "PlanetNew"
  end

  def edit
    render component: "PlanetEdit"
  end
  
  def destroy
    @planet = Planet.find(params[:id])
      @planet.destroy
      redirect_to root_path
  end

end
