class Listing < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_one :order, dependent: :destroy


  #------------------------------------------------------
  # Check that the name, description and price exist.
  # Make sure the listing name is composed on alphanumeric
  # chars. Make the price only accept positive integers.
  # Ensure that the description is not too long.
  #------------------------------------------------------
  validates_presence_of :name, :description, :price
  validates :name, format: { with: /^[a-zA-Z0-9]*$/, multiline: true, message: "should only contain alpha-numeric characters" }
  validates :price, numericality: { only_integer: true, greater_than: 0 }
  validates :description, length: { maximum: 1000, too_long: "1000 character limit, please shorten your description"}
end
