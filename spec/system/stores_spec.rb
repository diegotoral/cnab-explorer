require 'rails_helper'

RSpec.describe 'Stores' do
  it 'displays all available stores' do
    create(:store, name: 'Store #1')
    create(:store, name: 'Store #2')

    visit '/stores'

    expect(page).to have_content('Store #1')
    expect(page).to have_content('Store #2')
  end
end
