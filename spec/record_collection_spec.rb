require 'rspec'
require_relative '../record_collection'

describe RecordCollection do
  describe "initialization" do
    it "returns a RecordCollection" do
      expect(RecordCollection.new).to be_a(RecordCollection)
    end

  end
end