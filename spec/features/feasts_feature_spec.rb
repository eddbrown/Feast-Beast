require 'rails_helper'
require_relative 'helpers.rb'

feature 'feasts' do

  context 'no feasts have been added' do
    scenario 'should display a prompt to add a feast' do
      sign_up
      expect(page).to have_content 'No feasts yet'
      expect(page).to have_link 'Add a feast'
    end
  end

  context 'feasts have been added' do
    before do
      Feast.create(name: 'Sushi', description: 'OK', address: 'London')
    end

    scenario 'display feasts' do
      visit '/feasts'
      expect(page).to have_content('Sushi')
      expect(page).not_to have_content('No feasts yet')
    end
  end

  context 'creating feasts' do
    scenario 'prompts user to fill out a form, then displays the new feast' do
      sign_up
      click_link 'Add a feast'
      fill_in 'Name', with: 'Sushi'
      click_button 'Create Feast'
      expect(page).to have_content 'Sushi'
      expect(current_path).to eq '/feasts'
    end
  end

  context 'viewing feast page' do

    let!(:shawarma){Feast.create(name:'Shawarma', description: 'OK', address: 'London')}

    scenario 'user clicks link and is directed to feast page' do
      visit '/feasts'
      click_link shawarma.name
      expect(page).to have_content shawarma.name
      expect(current_path).to eq "/feasts/#{shawarma.id}"
    end
  end

  context 'updating feasts' do

    scenario 'user can edit feast profile' do
      sign_up
      create_feast
      click_link "Edit test"
      fill_in 'Name', with: 'test2'
      click_button 'Update Feast'
      expect(page).to have_content 'test2'
      expect(current_path).to eq '/feasts'
    end

    scenario 'user cannot edit feast that they did not create' do
      sign_up
      create_feast
      click_link "Sign out"
      sign_up2
      click_link "Edit test"
      expect(page).to have_content "You cannot edit this feast"
    end

    scenario 'user does not have edit option if he is not signed in' do
      sign_up
      create_feast
      click_link "Sign out"
      expect(page).not_to have_content "Edit test"
    end

  end

  context 'deleting feasts' do

    scenario 'removes a feast when a user clicks delete link' do
      sign_up
      create_feast
      click_link "Delete test"
      expect(page).not_to have_content "test"
      expect(page).to have_content 'Feast deleted successfully'
    end

    scenario 'cannot remove a feast when a user is not the originator' do
      sign_up
      create_feast
      click_link 'Sign out'
      sign_up2
      click_link "Delete test"
      expect(page).to have_content 'test'
      expect(page).to have_content 'You cannot delete this feast'
    end

    scenario 'user does not have delete option if he is not signed in' do
      sign_up
      create_feast
      click_link "Sign out"
      expect(page).not_to have_content "Delete test"
    end
  end



end