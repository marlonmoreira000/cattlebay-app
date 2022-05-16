class Listing < ApplicationRecord
  # belongs_to :profile
  belongs_to :user
  has_one_attached :picture
  has_one :order

  validates :name, presence: true
end
