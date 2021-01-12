require 'rails_helper'

RSpec.describe 'Creating a event', type: :feature do
  scenario 'valid input' do
    visit new_user_registration_path
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'

    visit new_event_path
    fill_in 'Date', with: '08/03/2021'
    click_on 'Create Event'

    expect(page).to have_content('Event was successfully created.')
  end
end
