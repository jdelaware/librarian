require 'rails_helper'

describe BooksController do
  let(:book) { create :book }

  describe 'index action' do
    before { get :index }

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'assigns @books' do
      expect(assigns(:books)).to match_array [book]
    end
  end
end
