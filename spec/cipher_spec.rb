require 'spec_helper.rb'
require './cipher.rb'

describe Cipher do
  context "runs the program" do
    subject(:transform) { described_class.new }
    it "returns an ascii code for a sentence" do
      result = transform.cipher('What a String!', 5)
      expect(result).to eq("Bmfy f Xywnsl!")
    end

    it "Hello returns Mjqqt" do
      result = transform.cipher("Hello", 5)
      expect(result).to eq("Mjqqt")
    end
  end
end
