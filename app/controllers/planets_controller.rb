class PlanetsController < ApplicationController
  

  def index
    render component: "Planets"
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

  def create
    
  end

  def destroy
    
  end

  def update
    
  end

end
