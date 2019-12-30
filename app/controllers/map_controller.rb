class MapController < ApplicationController
  def map
    @grid_x = 100
    @grid_y = 100
    
    @map_show= "This is a map"
    
   # Map.create(:x => 13, :y => 246, :traversable => true)
    @locations= Map.all()

  end
end
