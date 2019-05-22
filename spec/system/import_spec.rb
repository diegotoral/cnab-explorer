require 'rails_helper'

RSpec.describe 'Import' do
  scenario 'uploading a valid file', js: true do
    file = File.absolute_path(file_fixture('simple.txt'))

    visit '/'
    attach_file('Upload a file to begin', file, wait: 10, make_visible: true)

    expect(page).to have_content('BAR DO JOÃO')
    expect(page).to have_content('JOSEFINALODA DO Ó - MATRIZ')
    expect(page).to have_content('PEREIRAMERCADO DA AVENIDA')
  end
end
