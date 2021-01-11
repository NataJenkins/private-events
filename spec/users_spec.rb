require 'rails_helper'

RSpec.describe 'Creating a new user', type: :feature do
  scenario 'sign up' do
    visit new_user_registration_path
    fill_in 'Email', with: 'test1@test.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
