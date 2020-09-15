require_relative '../lib/joke.rb'

describe Joke do
  describe '#request' do
    let(:request) { Joke.new }
    let(:request_json) { request.request }
  end
end