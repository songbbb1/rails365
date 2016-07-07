require 'rails_helper'

describe ArticlesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get('/articles')).to route_to('articles#index')
    end

    it 'routes to #show' do
      expect(get('/articles/1')).to route_to('articles#show', id: '1')
    end

    it 'routes to #new' do
      expect(get('/articles/new')).to route_to('articles#new')
    end

    it 'routes to #edit' do
      expect(get('/articles/1/edit')).to route_to('articles#edit', id: '1')
    end
  end
end