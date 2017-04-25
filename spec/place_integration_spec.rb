require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:set_exceptions, false)

describe('the place path', {:type => :feature}) do
  it('processes user entry to locations to a list of places you have been') do
    visit('/')
    fill_in('location', :with => 'New York')
    fill_in('date', :with => '1884')
    fill_in('notes', :with => 'hot as hell')

    click_button('Add!')
    expect(page).to have_content('Back')
  end
end
