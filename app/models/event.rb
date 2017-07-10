class Event < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :categories
    has_many :photos
    has_many :bookings, dependent: :destroy
    has_many :guests, through: :bookings, source: :user
end
