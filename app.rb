require "sinatra"
require "sinatra/reloader"
require "http"
require "json"

url = "https://api.exchangerate.host/symbols"

raw_response = HTTP.get(url)

parsed_response = JSON.parse(raw_response)

get("/") do
  
  erb(:hi)
end
