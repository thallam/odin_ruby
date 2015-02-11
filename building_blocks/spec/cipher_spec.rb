require 'rspec'
require_relative 'caesar_cipher'


describe Cipher do
  describe "when it is given some text" do
    it "returns some text" do
      message = "A MessagE"
      expect(Cipher.new(message,5).to_s).to eq ("F RjxxflJ")
    end
  end

end
