require 'rails_helper'
require 'pry'

RSpec.feature 'Creating Comments' do

  before do
    @foo = User.create(email: "foo@bar.com", password: "password", password_confirmation: "password")
    # @george = FactoryGirl.create(:user)
    @pic = FactoryGirl.create(:picture)
    @comment = FactoryGirl.create(:comment)
    visit '/'
  end

  context "when a visitor tries to create a Comment" do

    scenario "he can't do it" do
      click_link "Show"
      fill_in :comment_body, with: 'Luv it!'
      click_button 'Create Comment'
      expect(current_path).to eql(new_user_session_path)
      expect(page).to have_content('Log in')
    end

    scenario "he is redireceted to the Log In page" do
      click_link "Show"
      fill_in :comment_body, with: 'Luv it!'
      click_button 'Create Comment'
      expect(current_path).to eql(new_user_session_path)
    end
  end

  context "when a signed in User tries to create a Comment" do
    scenario "he can do it" do
      click_link "Sign in"
      fill_in :user_email, with: 'foo@bar.com'
      fill_in :user_password, with: 'password'
      click_button 'Log in'
      click_link 'Show'
      fill_in :comment_body, with: 'Looking good, Ace!'
      click_button 'Create Comment'
      expect(page).to have_content 'Comment was successfully created.'
    end
  end
end
