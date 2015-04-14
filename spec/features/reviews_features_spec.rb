require 'rails_helper'
require_relative 'helpers.rb'

feature 'reviewing' do

  scenario 'allows users to write a review' do
    sign_up
    create_feast
    leave_review('solid', '3')
    expect(current_path).to eq '/feasts'
    expect(page).to have_content 'solid'
  end

  scenario 'it doesnt let a user leave two reviews on the same feast' do
    sign_up
    create_feast
    click_link "Sign out"
    sign_up2
    leave_review('solid', '3')
    leave_review('solid2', '3')
    expect(page).to have_content "solid"
    expect(page).not_to have_content "solid2"
    expect(page).to have_content "You cannot review the same feast more than once"
  end

  scenario 'a user cannot delete someone elses review' do
    sign_up
    create_feast
    leave_review('solid', '3')
    click_link "Sign out"
    sign_up2
    click_link '☓'
    expect(page).to have_content "solid"
    expect(page).to have_content "You cannot delete this review"
  end

  scenario 'it notifies a user he must login to leave a review' do
    sign_up
    create_feast
    click_link "Sign out"
    expect(page).not_to have_content "Edit test"
    expect(page).to have_content "(log in to leave a review)"
  end

  scenario 'deletes reviews of a deleted feast' do
    sign_up
    create_feast
    leave_review('solid', '3')
    click_link 'Delete test'
    expect(Review.all.any?).to eq false
  end

  scenario 'displays an average rating for all reviews' do
    sign_up
    create_feast
    leave_review('solid', '3')
    click_link "Sign out"
    sign_up2
    leave_review('solid2', '5')
    expect(page).to have_content('Average rating: ★★★★☆')
  end


end