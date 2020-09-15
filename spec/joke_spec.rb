require_relative '../lib/joke.rb'

describe Joke do
  describe '#request' do
    let(:request) { Joke.new }
    let(:request_json) { request.request }

    it 'should return hash response when the request is successful' do
      expect(request_json.class).to eql(Hash)
    end

    it 'returns an array response should not be empty' do
      expect(request_json.size).not_to eql(0)
    end
  end
end