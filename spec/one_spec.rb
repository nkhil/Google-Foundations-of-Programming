require 'one'

describe Subsequence do
  describe '.result'
  context "should return `apple`." do
    it "returns 'apple'" do
      expect(Subsequence.longest).to eq 'apple'
    end
  end

  describe '.check'
  context "should return `able`." do
    it "returns 'able'" do
      expect(Subsequence.test('able')).to eq 'able'
    end
  end
end


