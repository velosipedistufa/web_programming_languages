# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'numfinder', type: :request do
  describe 'GET /input' do
    it 'should return HTTP 200' do
      get '/numfinder/input'
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /output' do
    it 'Should return HTTP 200' do
      get '/numfinder/output'
      expect(response).to have_http_status(:found)
    end
  end
end
