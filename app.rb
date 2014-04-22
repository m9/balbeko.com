require "sinatra"
require "sinatra/multi_route"

set :public_folder, File.dirname(__FILE__) + '/public'

get "/" do
  erb :index
end

get "/en" do
  erb :en
end

get "/en/" do
  redirect to('/en'), 301
end

get "/webcam/" do
  @title   = "Вебкамеры Харькова"
  erb :webcam
end

get "/webcam", "/webcams", "/webcams/" do
  redirect to('/webcam/'), 301
end
