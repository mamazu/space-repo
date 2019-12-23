class VillageController < ApplicationController
  def index
    @user = current_user
    if !Village.where(:name => 'Name').exists?
      @village = Village.create(:name => 'Name', :level => 0, :position_x => 0, :position_y => 0)
    else
      @village = Village.find_by(:name => 'Name')
    end
  end
end
