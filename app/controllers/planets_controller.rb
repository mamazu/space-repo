class PlanetsController < ApplicationController
  def overview
    @user = current_user
    if !Planets.where(:name => "Name").exists?
      @planets = Planets.create(:name => "Name", :level => 0)
    else
      @planets = Planets.find_by(:name => "Name")
    end
  end
end
