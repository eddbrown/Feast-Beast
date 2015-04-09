require 'spec_helper'

describe User, type: :model do
  it { is_expected.to have_many :reviewed_feasts}
end 