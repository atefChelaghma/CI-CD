# frozen_string_literal: true

require 'sinatra'
require 'json'

configure :test do
  disable :protection
end
# TODO: refactor this method outstand
puts 'Debug line'
get '/api/hello' do
  content_type :json
  { message: 'Hello from Ruby REST API!' }.to_json
end
