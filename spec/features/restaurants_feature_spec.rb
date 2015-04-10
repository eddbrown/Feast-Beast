require 'rails_helper'
require_relative 'helpers.rb'

feature 'yelp' do
  context 'no yelp content added' do
    scenario 'should display a prompt to yelp content if not setup' do
      sign_up
      create_feast
      expect(page).to have_content 'No yelp content'
      expect(page).to have_link 'Add yelp content'
    end
  end
end
