require "sinatra"
set :public_folder, File.dirname(__FILE__) + '/public'

get "/" do
  erb :index
end

get "/webcam" do
  erb :webcam
end

get "/webcam/" do
  erb :webcam
end
