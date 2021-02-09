require 'faraday'
require 'pry'
require 'json'

response = Faraday.get("https://api.github.com/users/brianzanti")
json = JSON.parse(response.body, symbolize_names: true)

binding.pry
