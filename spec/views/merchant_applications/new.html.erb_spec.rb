require 'spec_helper'

describe "merchant_applications/new" do
  before(:each) do
    assign(:merchant_application, stub_model(MerchantApplication,
      :name => "MyString",
      :category => "MyString",
      :description => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new merchant_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", merchant_applications_path, "post" do
      assert_select "input#merchant_application_name[name=?]", "merchant_application[name]"
      assert_select "input#merchant_application_category[name=?]", "merchant_application[category]"
      assert_select "input#merchant_application_description[name=?]", "merchant_application[description]"
      assert_select "input#merchant_application_address[name=?]", "merchant_application[address]"
    end
  end
end
