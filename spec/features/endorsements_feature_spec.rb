require 'rails_helper'

feature 'endorsing reviews' do
  before do
    sign_up
    create_feast
    leave_review
  end

  xscenario 'a user can endorse a review, which updates the review endorsement count' do
    visit '/feasts'
    click_link 'Endorse test'
    expect(page).to have_content('1 endorsement')
  end
end