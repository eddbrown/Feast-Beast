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