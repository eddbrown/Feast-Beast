class Feast < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, length: {minimum: 3}, uniqueness: true

  def create_review(user, params)
    new_review = reviews.build(params)
    new_review.user = user
    new_review.save
    new_review 
  end
  
end
