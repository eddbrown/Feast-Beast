require 'rails_helper'

feature 'feasts' do

  context 'no feasts have been added' do
    scenario 'should display a prompt to add a feast' do
      visit '/feasts'
      expect(page).to have_content 'No feasts yet'
      expect(page).to have_link 'Add a feast'
    end
  end

end