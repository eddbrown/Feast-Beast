class Review < ActiveRecord::Base
  belongs_to :feast
  validates :rating, inclusion: (1..5)
end
