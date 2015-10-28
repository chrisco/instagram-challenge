require 'rails_helper'

describe 'Users' do

  context 'Visitor visits root path' do

    scenario 'visitor sees sign-in and sign-up links' do
      visit '/'
      expect(page).to have_content 'Sign in'
      expect(page).to have_content 'Sign up'
    end
  end
end
