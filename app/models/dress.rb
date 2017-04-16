class Dress < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :color_id, presence: true
  validates :rental_price, presence: true
  validates :sale_price, presence: true
  belongs_to :color
end
