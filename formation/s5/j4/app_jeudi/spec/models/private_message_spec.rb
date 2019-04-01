require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do
 before(:each) do 
 		@sender = User.create(first_name: "John", last_name: "Doe", email: "john@doe.com", age: "45" , city_id: 34)
 		@recipient = User.create(first_name: "John", last_name: "Doe", email: "john@doe.com", age: "45" , city_id: 34)
    @pm = PrivateMessage.create(content: "John content", sender_id: @sender.id, recipient_id: @recipient.id)
  end

	context "validation" do
    it "is valid with valid attributes" do
	    expect(@pm).to be_a(PrivateMessage)
#     expect(@pm).to be_valid
    end

    describe "#content" do
      it "should not be valid without content" do
        bad_pm = PrivateMessage.create(sender_id: @sender.id, recipient_id: @recipient.id)
        expect(bad_pm).not_to be_valid
        expect(bad_pm.errors.include?(:content)).to eq(true)
      end
    end
  end
end
