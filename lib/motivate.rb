require 'telegram/bot'
require 'net/http'
require 'json'

class Motivate
  @values = nil
  attr_reader :values 

  def initialize
    @values = request
  end

  def request
    url = 'https://type.fit/api/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end

  def random
    @values = @values.sample
    @values
  end
end
