class Dress < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true
  validates :rental_price, presence: true
  validates :sale_price, presence: true
end
