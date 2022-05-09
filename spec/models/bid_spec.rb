require "rails_helper"

RSpec.describe Bid, type: :model do
  context "have Associations" do
    it "is valid if it belong to Bidder" do
      should belong_to(:bidder)
    end
    it "is valid if it belong to Auction" do
      should belong_to(:auction)
    end
  end

  context "have Validations" do
    it "is valid if it has a Bidder" do
      should validate_presence_of(:bidder)
    end
  end
end
