require 'one'

describe Longest_subsequent do
  describe '.result'
  context "should return `apple`." do
    it "returns 'apple'" do
      expect(Longest_subsequent.result).to eq 'apple'
    end
  end

  describe '.check'
  context "should return `able`." do
    it "returns 'able'" do
      expect(Longest_subsequent.check('able')).to eq 'able'
    end
  end
end



