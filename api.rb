# frozen_string_literal: true

require 'sinatra'
require 'json'

configure :production do
  disable :protection
end

configure :test do
  disable :protection
end

get '/api/hello' do
  content_type :json
  { message: 'Hello from Ruby REST API!' }.to_json
end
