class Review < ActiveRecord::Base
  belongs_to :feast
  belongs_to :user
  validates :rating, inclusion: (1..5)
  
end
