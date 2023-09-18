require "sinatra"
require "sinatra/reloader"
require 'http'
require 'json'


get("/") do
  url = "https://api.exchangerate.host/symbols"
  uri = URI(url)
  response =  HTTP.get(uri)
  @response_obj = JSON.parse(response)
  @symbols = @response_obj.fetch("symbols")
  "hi"
  erb(:hi)
end

get('/:code1') do
  url = "https://api.exchangerate.host/symbols"
  uri = URI(url)
  response =  HTTP.get(uri)
  @response_obj = JSON.parse(response)
  @symbols = @response_obj.fetch("symbols")

  @code1 = params.fetch("code1")
  erb(:two)
end

get('/:code1/:code2') do
  

  @code1 = params.fetch("code1")
  @code2 = params.fetch("code2")

  erb(:end)
end
