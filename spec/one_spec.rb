require 'one'

describe Subsequence do
  describe '.check' do
    it "should return word if it's a subsequent" do
      expect(Subsequence.test('abppplee', 'apple')).to eq 'apple'
    end
  end

  describe '.result' do
    it "should return 'apple'" do
      expect(Subsequence.longest('abppplee', ['able', 'ale', 'apple'])).to eq 'apple'
    end
  end
end


