require 'spec_helper'

describe "merchant_applications/show" do
  before(:each) do
    @merchant_application = assign(:merchant_application, stub_model(MerchantApplication,
      :name => "Name",
      :category => "Category",
      :description => "Description",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Category/)
    rendered.should match(/Description/)
    rendered.should match(/Address/)
  end
end
