require 'spec_helper'

describe Feast, type: :model do
  it{ is_expected.to have_many :reviews }

  it 'is not valid with a name of less than three characters' do
    feast = Feast.new(name: "kf")
    expect(feast).to have(1).error_on(:name)
    expect(feast).not_to be_valid
  end

  it "is not valid unless it has a unique name" do
    Feast.create(name: "Moe's Tavern")
    feast = Feast.new(name: "Moe's Tavern")
    expect(feast).to have(1).error_on(:name)
  end

end 

describe '#average_rating' do
  context 'no reviews' do
    it 'returns "N/A" when there are no reviews' do
      feast = Feast.create(name: 'The Ivy')
      expect(feast.average_rating).to eq 'N/A'
    end
  end

  context '1 review' do
  it 'returns that rating' do
    feast = Feast.create(name: 'The Ivy')
    feast.reviews.create(rating: 4)
    expect(feast.average_rating).to eq 4
  end

  context 'multiple reviews' do
    it 'returns the average' do
      feast = Feast.create(name: 'The Ivy')
      feast.reviews.create(rating: 1)
      feast.reviews.create(rating: 5)
      expect(feast.average_rating).to eq 3
    end
  end
end

end