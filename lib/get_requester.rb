require 'open-uri'
require 'json'
require 'pry'

# Write your code here
class GetRequester

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    @val_str = uri.open.string
    @val_str

  end

  def parse_json
    @val_hash = JSON.parse(@val_str)
    @val_hash
    binding.pry

  end

end
