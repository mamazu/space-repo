class PlanetsController < ApplicationController
  def overview
    puts Planets.all().size
    # @user = current_user
    if !Planets.where(:name => "Name").exists?
      @planets = Planets.create(:name => "Name", :level => 0, :user => current_user)
      @planets.save!
    else
      @planets = Planets.find_by(:name => "Name")
    end
  end
end
