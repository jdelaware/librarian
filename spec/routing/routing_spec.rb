require 'rails_helper'

describe 'routing of Books', type: :routing do
  context 'as admin' do
    it 'routes /admin/books to the admin::books #index' do
      expect(get: '/admin/books').to route_to('admin/books#index')
    end

    it 'routes /admin/books/id to the admin::books #show' do
      expect(get: '/books/id').to route_to(
        controller: 'admin/books',
        action: 'show',
        id: 'id'
      )
    end

    it 'routes /admin/books/new to the admin::books #new' do
      expect(get: '/admin/books/new').to route_to('admin/books#new')
    end

    it 'routes post /admin/books to the admin::books #create' do
      expect(post: '/admin/books').to route_to('admin/books#create')
    end

    it 'routes /admin/books/id/edit to the admin::books #edit' do
      expect(get: '/admin/books/id/edit').to route_to(
        controller: 'admin/books',
        action: 'edit',
        id: 'id'
      )
    end

    it 'routes put /admin/books/id to the admin::books #update' do
      expect(put: '/books/id').to route_to(
        controller: 'admin/books',
        action: 'update',
        id: 'id'
      )
    end
  end

  context 'as user' do
    it 'routes /books to the books #index' do
      expect(get: '/books').to route_to('books#index')
    end

    it 'routes /books/id to the books #show' do
      expect(get: 'books/id').to route_to(
        controller: 'books',
        action: 'show',
        id: 'id'
      )
    end

    it 'routes /books/new to the books #new' do
      expect(get: '/books/new').to route_to('books#new')
    end

    it 'routes post /books to the books #create' do
      expect(post: '/books').to route_to('books#create')
    end

    it 'routes /books/id/edit to the books #edit' do
      expect(get: 'books/id/edit').to route_to(
        controller: 'books',
        action: 'edit',
        id: 'id'
      )
    end

    it 'routes put /books/id to the books #update' do
      expect(put: 'books/id').to route_to(
        controller: 'books',
        action: 'update',
        id: 'id'
      )
    end

    it 'cannot route /admin/books' do
      expect(get: 'admin/books').not_to be_routable
    end
  end
end
