require 'telegram/bot'
require 'net/http'
require 'json'

class News
  @values = nil
  attr_reader :values

  def initialize
    @values = request
  end

  def request
    url = 'https://gist.githubusercontent.com/Ceci007/8a5a2c4fa4825d72f4439ca991e902dc/raw/a6e5fa6798b2afbc5b5806307d0a849211c1b34e/news_gist.json'
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
