require 'rails_helper'

RSpec.describe 'Pokemen API', type: :request do
  # initialize test data
  let!(:pokemen) { create_list(:Pokeman, 10) }
  let(:pokemen_id) { :pokemen.first.id }
  let(:name) { :pokemen.name }

  # Test suite for GET /todos
  describe 'GET /pokemen' do
    # make HTTP get request before each example
    before { get '/pokemen' }

    it 'returns pokemen' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(25)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end