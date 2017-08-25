class Score < ApplicationRecord
  belongs_to :measure
  belongs_to :feature
  belongs_to :user
  validates :value, inclusion: { in: (0..5) }

  scope :business_value, -> { joins(:measure).where({ measures: { section: 0 } }) }
  scope :effort, -> { joins(:measure).where({ measures: { section: 1 } }) }
end
