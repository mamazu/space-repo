class PlanetsController < ApplicationController
  def assign_planet
    planets = current_user.planets
    redirect_to planets_path() unless planets.empty?

    planet = Planet.where(user: nil).sample
    puts planet
    if planet.nil?
      render 'planets/assign_failed'
    else
      planet.user = current_user
      planet.save
      redirect_to planets_path()
    end
  end

  def index
    @planets = current_user.planets
  end

  def update
    planet = Planet.find(params[:id])
    puts params

    planet.name = params[:planet][:name]
    planet.save!

    puts(planet.name)
    redirect_to planets_path()
  end
end
