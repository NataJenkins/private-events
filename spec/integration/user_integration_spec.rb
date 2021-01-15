require 'rails_helper'

RSpec.describe 'user', type: :feature do
  scenario 'sign up' do
    visit new_user_registration_path
    fill_in 'Email', with: 'test1@test.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'logout' do
    visit new_user_registration_path
    fill_in 'Email', with: 'test1@test.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'
    click_on 'Logout'

    expect(page).to have_content('Signed out successfully.')
  end

  scenario 'invalid login' do
    visit new_user_session_path
    fill_in 'Email', with: 'a@a.com'
    fill_in 'Password', with: '111111'
    click_on 'Log in'

    expect(page).to have_content('Invalid Email or password.')
  end

  scenario 'invalid sign up' do
    visit new_user_registration_path
    fill_in 'Email', with: 'test1@test.com'
    fill_in 'Password', with: '12345'
    fill_in 'Password confirmation', with: '12345'
    click_on 'Sign up'

    expect(page).to have_content('Password is too short')
  end
end
