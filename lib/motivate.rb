require 'telegram/bot' 

class Motivate
  @values = nil

  def initialize
    @values = make_the_request
  end
end