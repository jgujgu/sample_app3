require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "Address",
      :description => "MyText",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Address/)
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
  end
end
