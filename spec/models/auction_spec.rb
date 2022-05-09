# spec/models/auction_spec.rb

require 'rails_helper'

RSpec.describe Auction, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let(:param) {{title: "titulo", description: "descripcion", start_date: "06/05/1982", end_date: "29/04/2022"}}

  subject { described_class.new(param) }

  it "is valid with valid attributes" do
    auction = build(:auction)
    expect(auction).to be_valid
  end
    
  it "is not valid without a title" do
    auction = build(:auction, title: nil)
    expect(auction).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a start_date" do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a end_date" do
    subject.end_date = nil
    expect(subject).to_not be_valid
  end

  context "have Associations" do
    it "is valid if it belong to User" do
      should belong_to(:user).without_validating_presence
    end
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end