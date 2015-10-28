require 'rails_helper'
require 'pry'

RSpec.feature 'Add Comments to Pictures' do

    before do
      george = create(:user1)
      moo = create(:user2)
      pic = create(:picture)
    end

  scenario 'signed in users can create Pictures' do
    binding.pry
    login_as(@george)

    visit '/'
    click_link "Show"
    fill_in :comment_body, with: 'Luv it!'
    click_button 'Create Comment'
    expect(page).to have_content 'Comment was successfully created.'
  end

end
