require 'rails_helper'
require_relative 'helpers.rb'

context "user not signed in and on the homepage" do
  it "should see a 'sign in' link and a 'sign up' link" do
    visit('/')
    expect(page).to have_link('Sign in')
    expect(page).to have_link('Sign up')
  end

  it "should not see 'sign out' link" do
    visit('/')
    expect(page).not_to have_link('Sign out')
  end

  it "should not see 'add a feast' link" do
    visit('/')
    expect(page).not_to have_link('Add a feast')
  end
end

context "user signed in on the homepage" do

  it "should see 'sign out' link" do
    sign_up
    visit('/')
    expect(page).to have_link('Sign out')
  end

  it "should not see a 'sign in' link and a 'sign up' link" do
    sign_up
    visit('/')
    expect(page).not_to have_link('Sign in')
    expect(page).not_to have_link('Sign up')
  end

  it "should only see edit and delete options for their own feast" do
    sign_up
    create_feast
    click_link "Sign out"
    sign_up2
    expect(page).not_to have_link('Edit test')
    expect(page).not_to have_link('Delete test')
  end
end