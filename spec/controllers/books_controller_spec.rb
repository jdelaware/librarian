require 'rails_helper'

describe BooksController do
  describe 'index action' do
    before { get :index }

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
  end
end
