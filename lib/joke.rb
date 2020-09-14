require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Joke
  @values = nil

  def initialize
    @values = @request
  end

  def request
    url = 'https://api.yomomma.info/'

    escaped_address = URI.escape(url)
    uri = URI.parse(escaped_address)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
end
