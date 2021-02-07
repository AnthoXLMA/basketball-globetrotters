class Event < ApplicationRecord
  has_one_attached :image
  # belongs_to :playground
  geocoded_by :location, presence: true, uniqueness: true
  after_validation :geocode, if: :will_save_change_to_location?
end
