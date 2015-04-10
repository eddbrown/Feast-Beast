require 'rails_helper'

describe ReviewsHelper, :type => :helper do
  context '#star_rating' do
    it 'rounds up 2.6 to a 3 star rating' do
      expect(star_rating("2.6")).to eq("★★★☆☆")
    end
  end
end