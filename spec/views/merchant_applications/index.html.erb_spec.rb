require 'spec_helper'

describe "merchant_applications/index" do
  before(:each) do
    assign(:merchant_applications, [
      stub_model(MerchantApplication,
        :name => "Name",
        :category => "Category",
        :description => "Description",
        :address => "Address"
      ),
      stub_model(MerchantApplication,
        :name => "Name",
        :category => "Category",
        :description => "Description",
        :address => "Address"
      )
    ])
  end

  it "renders a list of merchant_applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
