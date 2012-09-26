require 'spec_helper'

describe "admins/show" do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin,
      :nick => "Nick",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nick/)
    rendered.should match(/Password/)
  end
end