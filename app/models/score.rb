class Score < ApplicationRecord
  belongs_to :measure
  belongs_to :feature
  belongs_to :user
  validates :value, inclusion: { in: (0..5) }
end
