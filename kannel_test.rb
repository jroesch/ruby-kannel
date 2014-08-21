require 'sinatra'
require 'pry'

set :port, 8000

get '/' do
  binding.pry
end

post '/updates' do
  binding.pry
end
  
