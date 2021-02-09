require 'faraday'
require 'pry'
require 'json'

response = Faraday.get 'https://api.github.com/users/nicorithner'

body = response.body

binding.pry


=begin
In pry:
  - check out what the response and body variables are holding
  - use JSON.parse(body) to change the string to a hash.
=end