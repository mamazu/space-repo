class PlanetsController < ApplicationController
  def assign_planet
    planets = current_user.planets
    redirect_to :planet_overview unless planets.empty?

    planet = Planet.where(user: nil).sample
    puts planet
    if planet.nil?
      render 'planets/assign_failed'
    else
      planet.user = current_user
      planet.save
      redirect_to :planet_overview
    end
  end

  def overview
    @planets = current_user.planets
  end
end
