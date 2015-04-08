class Feast < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  geocoded_by :address
  after_validation :geocode
end
