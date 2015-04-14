require 'rails_helper'
require_relative 'helpers.rb'

feature 'yelp' do
  context 'no yelp content added' do
    scenario 'should display a prompt to yelp content if not setup viewed from admin' do
      sign_up
      create_feast
      expect(page).to have_content 'No yelp content'
      expect(page).to have_link 'Add yelp details'
    end

    scenario 'should not mention a prompt to add yelp content viewed from from normal user' do
      sign_up
      create_feast
      click_link "Sign out"
      sign_up2
      expect(page).not_to have_content 'No yelp content'
      expect(page).not_to have_link 'Add yelp details'
    end

  end

  context 'adding yelp content' do

    scenario 'user is asked to select his business from list' do
      sign_up
      create_feast_with_address
      click_link 'Add yelp details'
      expect(page).to have_content 'Select your business from the list'
    end

  end
end
