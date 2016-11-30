class Note < ApplicationRecord
  belongs_to :prospect, dependent: :destroy
end