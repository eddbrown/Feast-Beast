class Feast < ActiveRecord::Base
  belongs_to :user
  has_one :yelp_content
  has_many :reviews, dependent: :destroy
  validates :name, length: {minimum: 3}, uniqueness: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def create_review(user, params)
    new_review = reviews.build(params)
    new_review.user = user
    new_review.save
    new_review
  end

  def average_rating
    return 'N/A' if reviews.none?
    return reviews.average(:rating)
    # return reviews.average(:rating) if feast.yelp_id.nil?
    # return ((reviews.average(:rating)*reviews.count)+(result.rating*result.review_count))/(reviews.count+result.review_count)
  end

  geocoded_by :address
  after_validation :geocode

end
