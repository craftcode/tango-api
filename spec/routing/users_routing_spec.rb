require 'rails_helper'

RSpec.describe UsersController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/users').to route_to('users#index', format: 'json')
    end

    it 'routes to #new' do
      expect(get: '/users/new').to route_to('users#new', format: 'json')
    end

    it 'routes to #show' do
      expect(get: '/users/1').to route_to('users#show', :id => '1', format: 'json')
    end

    it 'routes to #edit' do
      expect(get: '/users/1/edit').to route_to('users#edit', :id => '1', format: 'json')
    end

    it 'routes to #create' do
      expect(post: '/users').to route_to('users#create', format: 'json')
    end

    it 'routes to #update via PUT' do
      expect(put: '/users/1').to route_to('users#update', :id => '1', format: 'json')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/users/1').to route_to('users#update', :id => '1', format: 'json')
    end

    it 'routes to #destroy' do
      expect(delete: '/users/1').to route_to('users#destroy', :id => '1', format: 'json')
    end

    it 'routes to #sign_in' do
      expect(post: '/users/sign_in').to route_to('users#sign_in', format: 'json')
    end
  end
end
