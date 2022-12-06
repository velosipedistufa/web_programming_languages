require 'rails_helper'

RSpec.describe num_finder, type: :controller do
  describe "GET /" do
    it 'should return HTTP 200' do
      get :input
      expect(response).to have_http_status(:ok)
    end
  end

end
