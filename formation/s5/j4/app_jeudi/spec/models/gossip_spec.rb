require 'rails_helper'

RSpec.describe Gossip, type: :model do
  
  before(:each) do 
    @gossip = Gossip.create(title: "John", content: "Doe", user_id: "johndoe")
  end
	
	describe "#title" do
	      it "should not be valid without title" do
	        bad_gossip = Gossip.create(content: "Doe", user_id: "johndoe")
	        expect(bad_gossip).not_to be_valid 
	        expect(bad_gossip.errors.include?(:title)).to eq(true)
	  end
	end
	    describe "#content" do
	      it "should not be valid without content" do
	        bad_gossip = Gossip.create(title: "John", user_id: "johndoe")
	        expect(bad_gossip).not_to be_valid
	        expect(bad_gossip.errors.include?(:content)).to eq(true)
	  end
	end
end
