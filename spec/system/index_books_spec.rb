require 'rails_helper'

describe 'index books' do
  let(:book) { create :book }

  it 'renders the startpage' do
    visit root_path

    expect(page).to have_content('FCG Werther Library')
  end

  it 'displays a book' do
    # pending...
  end
end
