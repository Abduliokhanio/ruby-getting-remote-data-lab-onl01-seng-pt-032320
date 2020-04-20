require 'open-uri'
require 'json'
require 'net/http'
require 'pry'

# Write your code here
class GetRequester

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    @val_str = Net::HTTP.get_response(uri)
    @val_str.body

  end

  def parse_json
    @val_hash = JSON.parse(@val_str)
    @val_hash
    binding.pry

  end

end
