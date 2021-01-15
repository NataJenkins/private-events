require 'rails_helper'

RSpec.describe 'attending a event', type: :feature do
  scenario 'atendee' do
    visit new_user_registration_path
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'

    visit new_event_path
    fill_in 'Date', with: '08/03/2021'
    click_on 'Create Event'
    click_on 'Back'
    click_on 'Back'
    click_on 'Logout'

    visit new_user_registration_path
    fill_in 'Email', with: 'att@att.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'

    visit events_path
    click_on 'Show'
    click_on 'Create Attendee'
    visit events_path
    click_on 'Show'

    expect(page).to have_content('att@att.com')
  end
end
