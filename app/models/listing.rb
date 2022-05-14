class Listing < ApplicationRecord
  # belongs_to :profile
  belongs_to :user
  has_one_attached :picture

  validates :name, presence: true
end
