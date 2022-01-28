require 'rails_helper'

describe Book do
  let(:book) { create :book }

  describe 'validation' do
    context 'with valid params' do
      it 'validates books' do
        expect(book).to be_valid
      end
    end

    context 'with invalid params' do
      before do
        book.isbn = nil
        book.title = nil
        book.author = nil
        book.status = nil
      end

      it 'does not validate books' do
        expect(book).not_to be_valid
      end
    end
  end

  describe '.to_s' do
    it 'builds string of title and author' do
      expect(book.to_s).to eq 'Das Kapital - Karl Marx'
    end
  end
end
