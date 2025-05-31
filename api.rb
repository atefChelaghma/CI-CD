require 'sinatra'
require 'json'

# A simple GET endpoint
get '/api/hello' do
  content_type :json
  { message: 'Hello from Ruby REST API!' }.to_json
end
