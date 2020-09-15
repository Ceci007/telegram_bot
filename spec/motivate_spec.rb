require_relative '../lib/motivate.rb'

describe Motivate do
  describe '#request' do
    let(:request) { Motivate.new }
    let(:request_json) { request.request }

    it 'should return json response when the request is successful' do
      expect(request_json.class).to eql(Array)
    end

    it 'returns an array response should not be empty' do
      expect(request_json.length).not_to eql(0)
    end
  end

  describe '#random' do
    let(:random) { Motivate.new }
    let(:request_random) { random.random }

    it 'should return an Hash' do
      expect(request_random.class).to eql(Hash)
    end

    it 'should return a key and a value' do
      expect(request_random.size).to eql(2)
    end
  end
end