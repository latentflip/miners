require 'sinatra'

set :port, ENV['PORT'] || 4567

get '/' do
  send_file './public/index.html'
end

