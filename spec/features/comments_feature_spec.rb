require 'rails-helper'
require 'pry'

RSpec.feature 'Add Comments to Pictures' do

  before do
    let! (:george) { create(:user1) }
    let! (:moomoo) { create(:user2) }
    let! (:pic) { create(:picture) }
  end

  scenario 'signed in users can create Pictures' do
    login_as(:george)

    visit '/'
    click_link "Show"
    fill_in :comment_body, with: 'Luv it!'
    click_button 'Create Comment'
    expect(page).to have_content 'Comment was successfully created.'
  end

end
