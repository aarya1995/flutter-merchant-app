require 'spec_helper'

describe "merchant_applications/edit" do
  before(:each) do
    @merchant_application = assign(:merchant_application, stub_model(MerchantApplication,
      :name => "MyString",
      :category => "MyString",
      :description => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit merchant_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", merchant_application_path(@merchant_application), "post" do
      assert_select "input#merchant_application_name[name=?]", "merchant_application[name]"
      assert_select "input#merchant_application_category[name=?]", "merchant_application[category]"
      assert_select "input#merchant_application_description[name=?]", "merchant_application[description]"
      assert_select "input#merchant_application_address[name=?]", "merchant_application[address]"
    end
  end
end
