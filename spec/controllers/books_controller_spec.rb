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

  describe 'show action' do
    before { get :show, params: { id: book.id } }

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'assigns @book' do
      expect(assigns(:book)).to eq book
    end
  end
end
