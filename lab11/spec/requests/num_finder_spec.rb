# frozen_string_literal: true

require 'rails_helper'

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

    it "returns correct result" do
      get "/num_finder/output.x?ch=6&get_database[checked]=0&commit=Translate"
      expect(controller.instance_variable_get(:@result_table)).to eq([6,'110','011',3])
    end
    it "returns correct result" do
      get "/num_finder/output.x?ch=8&get_database[checked]=0&commit=Translate"
      expect(controller.instance_variable_get(:@result_table)).to eq([8,'1000','0001',1])
    end
  end
end
