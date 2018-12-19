require 'one'

describe Longest_subsequent do
  describe '.result'
  let(:s) { Longest_subsequent.new("abppplee") }
  context "should return `apple`." do
    it "returns 'apple'" do
      expect(s.result).to eq 'apple'
    end
  end

  describe '.check'
  let(:s) { Longest_subsequent.new("abppplee") }
  context "should return `able`." do
    it "returns 'able'" do
      expect(s.check('able')).to eq 'able'
    end
  end
end
