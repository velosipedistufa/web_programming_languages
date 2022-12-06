# frozen_string_literal: true

#require 'rails_helper'

RSpec.describe 'num_finder', type: :request do
  describe 'GET /input' do
    it 'should return HTTP 200' do
      get '/num_finder/input'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /output' do
    it 'Should return HTTP 200' do
      get '/num_finder/output'
      expect(response).to have_http_status(:success)
    end
  end

  context 'should give correct result' do
    it 'with 6' do
      get '/num_finder/output?ch=6'
      expect(assigns[:result]).to eq 3
    end
    it 'with 9' do
      get '/num_finder/output?ch=9'
      expect(assigns[:result]).to eq 9
    end
  end
end
