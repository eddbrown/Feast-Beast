require 'rails_helper'

feature 'reviewing' do 
  let!(:kebab){Feast.create(name: 'Kebabs')}

  scenario 'allows users to write a review' do
    visit '/feasts'
    click_link "Review #{kebab.name}"
    fill_in 'Thoughts', with: 'solid'
    select '5', from: 'Rating'
    click_button 'Leave Review'
    expect(current_path).to eq '/feasts'
    expect(page).to have_content 'solid'
  end
end