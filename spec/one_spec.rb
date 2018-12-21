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

  describe '.all' do
    it "should return all subsequent words" do
      expect(Subsequence.all('abppplee', ['able', 'ale', 'apple', 'bale', 'kangaroo'])).to eq ['able', 'ale', 'apple']
    end
  end

  describe '.longest' do
    it "should return the longest word in the given array" do
      expect(Subsequence.longest('abppplee', ['able', 'ale', 'apple'])).to eq 'apple'
    end
  end
end
