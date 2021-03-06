class Playground < ApplicationRecord
  has_many :events
  has_one_attached :image
  geocoded_by :location, presence: true, uniqueness: true
  after_validation :geocode, if: :will_save_change_to_location?
end
