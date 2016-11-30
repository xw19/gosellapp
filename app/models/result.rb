class Result < ApplicationRecord
  belongs_to :prospect, required: true
  validates :disposition, presence: true
end