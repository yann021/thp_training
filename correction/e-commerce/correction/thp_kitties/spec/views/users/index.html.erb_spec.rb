require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :user_name => "User Name",
        :description => "MyText"
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :user_name => "User Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
