require 'sinatra'

get "/" do
    haml :index
end


get "/new" do
    haml :new
end
