require 'rails_helper'

feature 'feasts' do

  context 'no feasts have been added' do
    scenario 'should display a prompt to add a feast' do
      visit '/feasts'
      expect(page).to have_content 'No feasts yet'
      expect(page).to have_link 'Add a feast'
    end
  end

  context 'feasts have been added' do
    before do
      Feast.create(name: 'Sushi')
    end

    scenario 'display feasts' do
      visit '/feasts'
      expect(page).to have_content('Sushi')
      expect(page).not_to have_content('No feasts yet')
    end
  end

  context 'creating feasts' do
    scenario 'prompts user to fill out a form, then displays the new feast' do
      visit '/feasts'
      click_link 'Add a feast'
      fill_in 'Name', with: 'Sushi'
      click_button 'Create Feast'
      expect(page).to have_content 'Sushi'
      expect(current_path).to eq '/feasts'
    end
  end

  context 'viewing feast page' do

    let!(:shawarma){Feast.create(name:'Shawarma')}

    scenario 'user clicks link and is directed to feast page' do

      visit '/feasts'
      click_link shawarma.name
      expect(page).to have_content shawarma.name
      expect(current_path).to eq "/feasts/#{shawarma.id}"

    end


  end

end