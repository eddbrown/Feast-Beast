require 'spec_helper'

describe Feast, type: :model do
  it{ is_expected.to have_many :reviews }
end 