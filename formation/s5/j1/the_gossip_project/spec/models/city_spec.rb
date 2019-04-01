require 'rails_helper'

RSpec.describe City, type: :model do
  
  before(:each) do 
    @city = City.create(name: "Toulouse", zipcode: "31500")
  end

	describe "#name" do
    it "should not be valid without name" do
        bad_city = City.create(zipcode: "31500")
        expect(bad_city).not_to be_valid
        expect(bad_city.errors.include?(:name)).to eq(true)
    end
  end

   describe "#zipcode" do
      it "should not be lower that 5 characters" do
        invalid_city = City.create(name: "Toulouse", zipcode: "500")
        expect(invalid_city).not_to be_valid
        expect(invalid_city.errors.include?(:zipcode)).to eq(true)
      end
    end

end
