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
    val = Net::HTTP.get_response(uri)
    @val_str = val.body

  end

  def parse_json
    JSON.parse(@val_str)
  end

end
