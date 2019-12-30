class Building < ApplicationRecord
  belongs_to :village

  attribute :level, :integer, default: 1
end
