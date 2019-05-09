class Listing < ApplicationRecord

  has_one_attached :image

  # belongs_to :user
  # belongs_to :route
  # has_many :dates

end
