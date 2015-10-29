require 'rails_helper'
require 'pry'

RSpec.feature 'Create Like' do

  before do
    @user = FactoryGirl.create(:user)
    @picture = FactoryGirl.create(:picture)
    visit '/'
    click_link 'Show'
  end

  context 'when a visitor or non-signed-in user is on a page with a picture' do
    scenario "he does not see a 'Like' button or link" do
      expect(page).not_to have_content 'Like'
    end
  end

  context 'when a signed in User tries to Like a Picture' do
    scenario "he sees a 'Like' button or link" do
      expect(page).to have_content 'Like'
    end
  end
end
