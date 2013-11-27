require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :description => "MyText",
        :title => "Title"
      ),
      stub_model(User,
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :description => "MyText",
        :title => "Title"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
