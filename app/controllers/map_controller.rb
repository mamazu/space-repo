class MapController < ApplicationController
  def map
    @map_show= "This is a map"
    
    Map.create(:x => 12, :y => 245, :traversable => true)
    @locations= Map.all()
  end
end
