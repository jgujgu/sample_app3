require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_latitude", :name => "user[latitude]"
      assert_select "input#user_longitude", :name => "user[longitude]"
      assert_select "input#user_address", :name => "user[address]"
      assert_select "textarea#user_description", :name => "user[description]"
      assert_select "input#user_title", :name => "user[title]"
    end
  end
end
