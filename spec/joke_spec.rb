require_relative '../lib/joke.rb'

describe Joke do
  describe '#request' do
    let(:request) { Joke.new }
    let(:request_json) { request.request }

    it 'should return hash response when the request is sucessful' do
      expect(request_json.class).to eql(Hash)
    end
  end
end