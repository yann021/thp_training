require 'rails_helper'

RSpec.describe Tag, type: :model do

	before(:each) do 
    @tag = Tag.create(title: "Toulouse")
  end

	describe "#title" do
    it "should not be valid without first_name" do
      bad_tag = Tag.create()
      expect(bad_tag).not_to be_valid
      expect(bad_tag.errors.include?(:title)).to eq(true)
    end
  end
 
 describe "#title" do
    it "should not be lower that 3 characters" do
      bad_tag = Tag.create(title: "aa" )
      expect(bad_tag).not_to be_valid
      expect(bad_tag.errors.include?(:title)).to eq(true)
    end
  end

end
