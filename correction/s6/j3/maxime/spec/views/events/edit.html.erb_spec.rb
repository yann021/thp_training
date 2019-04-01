require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :duration => 1,
      :title => "MyString",
      :description => "MyText",
      :price => 1,
      :location => "MyString",
      :administrator => ""
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[duration]"

      assert_select "input[name=?]", "event[title]"

      assert_select "textarea[name=?]", "event[description]"

      assert_select "input[name=?]", "event[price]"

      assert_select "input[name=?]", "event[location]"

      assert_select "input[name=?]", "event[administrator]"
    end
  end
end
