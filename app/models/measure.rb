class Measure < ApplicationRecord
  enum section: { business_value: 0, effort: 1 }
  has_many :scores
  validates :name, :hint, :start_hint, :end_hint, :allocation_percent, presence: true
end
