require 'spec_helper.rb'
require './cipher.rb'

describe Cipher do
  context "runs the program" do
    subject(:transform) { described_class.new }
    it "returns an ascii code for a sentence" do
      result = transform.cipher('What a String!', 5).force_encoding(Encoding::UTF_8)
      expect(result).to eq("Bmfy f Xywnsl!")
    end
  end
end
