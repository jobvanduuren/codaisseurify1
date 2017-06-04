class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :album, presence: true
  validates :image_url, length: { maximum: 500 }, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
  validates :duration, numericality: { only_integer: true }
  validates :duration, numericality: { less_than: 10000 }
end
