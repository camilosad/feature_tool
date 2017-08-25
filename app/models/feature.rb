class Feature < ApplicationRecord
  belongs_to :user
  has_many :scores
  validates :name, :description, :stakeholder, presence: true

  def total_business_value
    scores.business_value.to_a.sum(&:value)
  end
end
