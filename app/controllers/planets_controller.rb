class PlanetsController < ApplicationController
  def overview
    @planets = current_user.planets

  end
end
