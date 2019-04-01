require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :duration => 1,
      :title => "MyString",
      :description => "MyText",
      :price => 1,
      :location => "MyString",
      :administrator => ""
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[duration]"

      assert_select "input[name=?]", "event[title]"

      assert_select "textarea[name=?]", "event[description]"

      assert_select "input[name=?]", "event[price]"

      assert_select "input[name=?]", "event[location]"

      assert_select "input[name=?]", "event[administrator]"
    end
  end
end
