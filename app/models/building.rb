class Building < ApplicationRecord
  belongs_to :planet

  attribute :level, :integer, default: 1
end
