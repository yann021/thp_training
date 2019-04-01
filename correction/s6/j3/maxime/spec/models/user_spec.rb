require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do 
		@user = FactoryBot.create(:user)  	
  end

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
    end

=begin
    describe "#email" do
      it { expect(@user).to validate_presence_of(:email) }
      it { expect(@user).to validate_uniqueness_of(:email) }
      it { is_expected.to allow_value("email@addresse.foo").for(:email) }
      it { is_expected.to_not allow_value("foo").for(:email) }
      it { is_expected.to_not allow_value("jean@examplecom").for(:email) }
    end
=end

		describe "#first_name" do
		  it { expect(@user).to validate_presence_of(:first_name) }
    end
    
    describe "#last_name" do
		  it { expect(@user).to validate_presence_of(:last_name) }
    end
    
    describe "#description" do
		  it { expect(@user).to validate_presence_of(:description) }
	  end
  end

  context "associations" do
    it { expect(@user).to have_many(:attendances).with_foreign_key(:attendee_id) }
    it { expect(@user).to have_many(:events).with_foreign_key(:admin_id) }
  end

end
