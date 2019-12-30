class MapController < ApplicationController
  def map
    @map_show= "This is a map"
    
   # Map.create(:x => 13, :y => 246, :traversable => true)
    @locations= Map.all()
  end
end
