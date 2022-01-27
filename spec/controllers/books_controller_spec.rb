require 'rails_helper'

describe BooksController do
  before do
    get :index
  end

  it 'renders the index template' do
    expect(response).to render_template(:index)
  end
end
