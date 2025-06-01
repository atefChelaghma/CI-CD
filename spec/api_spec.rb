# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require 'rack/test'
require_relative '../api'

RSpec.describe 'API endpoint' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'returns a hello message' do
    get '/api/hello'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include('Hello')
  end
end
