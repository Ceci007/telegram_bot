require_relative '../lib/news.rb'

describe News do
  describe '#request' do
    let(:request) { News.new }
    let(:request_json) { request.request }

    it 'should return json response when the request is successful' do
      expect(request_json.class).to eql(Array)
    end

    it 'returns an array response should not be empty' do
      expect(request_json.length).not_to eql(0)
    end
  end
end