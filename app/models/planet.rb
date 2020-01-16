class Planet < ApplicationRecord
  has_many :buildings
  belongs_to :user, optional: true

  after_initialize :after_initialize

  attribute :level, :integer, default: 1
  attribute :name, :string, default: 'Planet'

  def after_initialize
    if new_record?
      buildings << Building.create(name: 'Main Building', level: 1)
      buildings << Building.create(name: 'Lumberjack', level: 1)
      buildings << Building.create(name: 'Clay pit')
    end
  end
end
