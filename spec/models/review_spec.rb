require 'rails_helper'

describe Review, :type => :model do
  it "is invalid if the rating is more than 5" do
    review = Review.new(rating: 10)
    expect(Review.all.any?).to eq false
  end
end