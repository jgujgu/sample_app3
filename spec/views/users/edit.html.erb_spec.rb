require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_latitude", :name => "user[latitude]"
      assert_select "input#user_longitude", :name => "user[longitude]"
      assert_select "input#user_address", :name => "user[address]"
      assert_select "textarea#user_description", :name => "user[description]"
      assert_select "input#user_title", :name => "user[title]"
    end
  end
end
