class Planets < ApplicationRecord
  has_many :buildings
  belongs_to :user

  after_initialize :after_initialize

  def after_initialize
    if self.new_record?
      buildings << Building.create(:name => "Main Building", :level => 1)
      buildings << Building.create(:name => "Lumberjack", :level => 1)
      buildings << Building.create(:name => "Clay pit")
    end
  end
end
