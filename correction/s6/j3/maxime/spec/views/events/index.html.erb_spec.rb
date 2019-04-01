require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :duration => 2,
        :title => "Title",
        :description => "MyText",
        :price => 3,
        :location => "Location",
        :administrator => ""
      ),
      Event.create!(
        :duration => 2,
        :title => "Title",
        :description => "MyText",
        :price => 3,
        :location => "Location",
        :administrator => ""
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
