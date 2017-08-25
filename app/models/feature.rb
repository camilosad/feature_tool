class Feature < ApplicationRecord
  belongs_to :user
  has_many :scores
  validates :name, :description, :stakeholder, presence: true
end
