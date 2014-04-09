require "sinatra"
require "sinatra/multi_route"

set :public_folder, File.dirname(__FILE__) + '/public'

get "/" do
  erb :index
end

get "/webcam", "/webcam/", "/webcams", "/webcams/" do
  @title   = "Вебкамеры Харькова"
  @webcams = []
  @webcams << {h1: "Вебкамера #1: Вид на Харьковскую ОГА", h2: "Харьков, ул. Сумская, 37", file: "velo_sums37.stream", autostart: true, placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #2", h2: "Харьков, ул. Сумская, 77",        file: "velo_sums77.stream",     autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg", placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #3", h2: "Харьков, ул. Мироносицкая, 99",   file: "velo_miron99.stream",    autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #4", h2: "Харьков, Площадь Конституции, 7", file: "konst7.stream",          autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #5", h2: "Харьков, пр. Правды, 7",          file: "velo_pravd7_1.stream",   autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #6", h2: "Харьков, пр. Правды, 7",          file: "velo_pravd7_2.stream",   autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #7", h2: "Харьков, пр. Ленина, 32",         file: "velo_lenina32_1.stream", autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #8", h2: "Харьков, пр. Ленина, 32",         file: "velo_lenina32_2.stream", autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg"}
  @webcams << {h1: "Вебкамера #9", h2: "Харьков, пр. Ленина, 32",         file: "velo_lenina32_3.stream", autostart: false, placeholder: "http://i.imgur.com/guKoSIC.jpg"}

  erb :webcam
end
